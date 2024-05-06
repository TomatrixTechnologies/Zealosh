// ignore_for_file: non_constant_identifier_names, no_leading_underscores_for_local_identifiers

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:zealosh/src/domin/auth/auth_service.dart';
import 'package:zealosh/src/domin/auth/models/login_resp.dart';
import 'package:zealosh/src/domin/auth/models/profile_resp.dart';
import 'package:zealosh/src/domin/core/failures/main_failure.dart';
import 'package:zealosh/utils/notification_helper.dart';
import 'package:zealosh/utils/router_helper.dart';
import 'package:zealosh/utils/shared_preference/shared_preferences_keys.dart';
import 'package:zealosh/utils/shared_preference/token_manager.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc(AuthService _AuthService) : super(AuthState.initial()) {
    on<_Login>((event, emit) async {
      if (event.username.isEmpty || event.password.isEmpty) {
        NotificationTester.showSnackBar(
            label: "Try Again! Someting wrong/(Empty)");
        emit(state);
        return;
      }

      // Loading
      emit(state.copyWith(isLoading: true));
      // Fetch Api
      final login = await _AuthService.login(
          username: event.username, password: event.password);

      // Fold signup and set login
      final _state = login.fold(
        (MainFailure failure) {
          NotificationTester.showSnackBar(label: failure.detail);
          return state.copyWith(
            isLoading: false,
            hasError: true,
            errorMsg: failure.detail,
          );
        },
        (LoginResponse resp) {
          // TokenManager tokenManager = TokenManager();
          final accessToken = resp.accessToken;
          final refreshToken = resp.refreshToken;

          TokenManager.setString(
              SharedPreferenceKeys.refreshToken, refreshToken);
          TokenManager.setString(SharedPreferenceKeys.accessToken, accessToken);
          Routes.pushNamedAndRemoveUntil(Routes.mainPage);
          return state.copyWith(
            isLoading: false,
            hasError: false,
            isLoggedIn: true,
            accessToken: resp.accessToken,
            refreshToken: resp.refreshToken,
          );
        },
      );

      //  Update to state
      emit(_state);
    });
    
 on<_Logout>((event, emit) async {
      if (state.isLoggedIn) {
        TokenManager.removeString(SharedPreferenceKeys.accessToken);
        TokenManager.removeString(SharedPreferenceKeys.refreshToken);
        emit(AuthState.initial());
        // Routes.pushNamed(Routes.login);
      }
    });

    on<_ResreshToken>((event, emit) {
      // TODO: implement event handler
    });

 on<_GetProfile>((event, emit) async {
      // Loading
      emit(state.copyWith(isLoading: true));

      // Fetch Api
      final productsResp =
          await _AuthService.getProfile();

      // Fold banners and create a new state instance
      final _state = productsResp.fold(
        (MainFailure failure) {
          NotificationTester.showSnackBar(label: failure.detail);
          return state.copyWith(
            isLoading: false,
            hasError: true,
            errorMsg: failure.detail,
          );
        },
        (ProfileResponse resp) {
          return state.copyWith(
              isLoading: false, hasError: false, profile: resp);
        },
      );

      //  Update to state
      emit(_state);
    });
on<_GetCountries>((event, emit) async {
      // Loading
      emit(state.copyWith(isLoading: true));

      // Fetch Api
      final _countryResp =
          await _AuthService.getCountries();

      // Fold banners and create a new state instance
      final _state = _countryResp.fold(
        (MainFailure failure) {
          NotificationTester.showSnackBar(label: failure.detail);
          return state.copyWith(
            isLoading: false,
            hasError: true,
            errorMsg: failure.detail,
          );
        },
        (List<Country> resp) {
          return state.copyWith(
              isLoading: false, hasError: false, countries: resp);
        },
      );

      //  Update to state
      emit(_state);
    });


  }
}
