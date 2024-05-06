import 'package:dartz/dartz.dart';
import 'package:zealosh/src/domin/auth/models/login_resp.dart';
import 'package:zealosh/src/domin/auth/models/profile_resp.dart';
import 'package:zealosh/src/domin/auth/models/token_refresh_resp.dart';
import 'package:zealosh/src/domin/core/failures/main_failure.dart';

abstract class AuthService {
  Future<Either<MainFailure, LoginResponse>> login(
      {required String username, required String password});
  Future<Either<MainFailure, TokenRefreshResponse>> refreshToken(
      {required String refreshToken});
  Future<Either<MainFailure, ProfileResponse>> getProfile();
  Future<Either<MainFailure, List<Country>>> getCountries();
}
