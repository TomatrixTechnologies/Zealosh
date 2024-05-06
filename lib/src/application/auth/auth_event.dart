part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  // Auth
  const factory AuthEvent.login({
    required String username,
    required String password,
  }) = _Login;
  const factory AuthEvent.refreshToken({
    required String accessToken,
    required String refreshToken,
  }) = _ResreshToken;  
  const factory AuthEvent.getProfile() = _GetProfile;
  const factory AuthEvent.getcountries() = _GetCountries;
  const factory AuthEvent.logout() = _Logout;
}