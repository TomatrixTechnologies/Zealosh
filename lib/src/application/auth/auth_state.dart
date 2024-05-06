part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    required bool isLoading,
    required bool hasError,
    required String errorMsg,
    required bool isLoggedIn,
    required String username,
    required String password,
    String? accessToken,
    String? refreshToken,
    ProfileResponse? profile,
    required List<Country> countries,
  }) = _Initial;
  factory AuthState.initial() {
    return AuthState(
      isLoading: false,
      hasError: false,
      errorMsg: "",
      username: "",
      password: "",
      isLoggedIn:
          TokenManager.getString(SharedPreferenceKeys.accessToken).isNotEmpty,
      accessToken: TokenManager.getString(SharedPreferenceKeys.accessToken),
      refreshToken: TokenManager.getString(SharedPreferenceKeys.refreshToken),
      countries: [],
    );
  }
}
