// // ignore_for_file: avoid_print, deprecated_member_use

// import 'package:dartz/dartz.dart';
// import 'package:dio/dio.dart';
// import 'package:injectable/injectable.dart';
// import 'package:zealosh/src/domin/auth/auth_service.dart';
// import 'package:zealosh/src/domin/auth/models/login_resp.dart';
// import 'package:zealosh/src/domin/auth/models/profile_resp.dart';
// import 'package:zealosh/src/domin/auth/models/token_refresh_resp.dart';
// import 'package:zealosh/src/domin/core/api_endpoints.dart';
// import 'package:zealosh/src/domin/core/dio_helper.dart';

// import 'package:zealosh/src/domin/core/failures/main_failure.dart';
// import 'package:zealosh/src/domin/models/base_api_resp.dart';

// @LazySingleton(as: AuthService)
// class AuthImpl implements AuthService {
//   @override
//   Future<Either<MainFailure, LoginResponse>> login(
//       {required String username, required String password}) async {
//     try {
//       //  Fetch Data from the server
//       final  response = await dioClient.post(ApiEndpoints.login,
//           data: {'username': username, 'password': password});

//       // If Response is success
//       if (response.statusCode == 200) {
//         // Covert json to dart
//         final result = LoginResponse.fromJson(response.data);

//         print(result);
//         return Right(result);
//       } else {
//         final error = BaseApiResponse.fromJson(response.data);
//         return Left(
//           MainFailure.serverFailure(detail: error.detail),
//         );
//       }
//     } on DioError catch (e) {
//       return Left(
//         MainFailure.clientFailure(detail: e.error.toString()),
//       );
//     } catch (e) {
//       print(e);
//       return Left(
//         MainFailure.clientFailure(detail: "Error occurred: ${e.toString()}"),
//       );
//     }
//   }

//   @override
//   Future<Either<MainFailure, TokenRefreshResponse>> refreshToken(
//       {required String refreshToken}) async {
//     try {
//       //  Fetch Data from the server
//       final Response response = await dioClient
//           .post(ApiEndpoints.tokenRefresh, data: {'refresh': refreshToken});

//       // If Response is success
//       if (response.statusCode == 200) {
//         // Covert json to dart
//         final result = TokenRefreshResponse.fromJson(response.data);

//         return Right(result);
//       } else {
//         final error = BaseApiResponse.fromJson(response.data);
//         return Left(
//           MainFailure.serverFailure(detail: error.detail),
//         );
//       }
//     } on DioError catch (e) {
//       return Left(
//         MainFailure.clientFailure(detail: e.error.toString()),
//       );
//     } catch (e) {
//       print(e);
//       return Left(
//         MainFailure.clientFailure(detail: "Error occurred: ${e.toString()}"),
//       );
//     }
//   }

//   @override
//   Future<Either<MainFailure, ProfileResponse>> getProfile() async {
//     try {
// //  Fetch Data from the server
//       final Response response =
//           await dioClient.get(ApiEndpoints.profile );
//       // print(response.data);
//       // If Response is success
//       if (response.statusCode == 200) {
//         // Covert json to dart
//         ProfileResponse profile;
//         profile = ProfileResponse.fromJson(response.data);
// print(response.data);
//         // print(product);
//         return Right(profile);
//       } else {
//         final error = BaseApiResponse.fromJson(response.data);
//         return Left(
//           MainFailure.serverFailure(detail: error.detail),
//         );
//       }
//     } on DioError catch (e) {
//       return Left(
//         MainFailure.clientFailure(
//             detail: "Client Error occur Product: ${e.toString()}"),
//       );
//     } catch (e) {
//       return Left(
//         MainFailure.clientFailure(
//             detail: "Client Error occur Product: ${e.toString()}"),
//       );
//     }
//   }
//    @override
//   Future<Either<MainFailure, List<Country>>> getCountries() async {
//     try {
// //  Fetch Data from the server
//       final Response response =
//           await dioClient.get(ApiEndpoints.country );
//       // print(response.data);
//       // If Response is success
//       if (response.statusCode == 200) {
//         // Covert json to dart
//          final List<Country> countries = [];
//         for (final raw in response.data) {
//           countries.add(Country.fromJson(raw as Map<String, dynamic>));
//         }
// print(response.data);
//         // print(product);
//         return Right(countries);
//       } else {
//         final error = BaseApiResponse.fromJson(response.data);
//         return Left(
//           MainFailure.serverFailure(detail: error.detail),
//         );
//       }
//     } on DioError catch (e) {
//       return Left(
//         MainFailure.clientFailure(
//             detail: "Client Error occur Product: ${e.toString()}"),
//       );
//     } catch (e) {
//       return Left(
//         MainFailure.clientFailure(
//             detail: "Client Error occur Product: ${e.toString()}"),
//       );
//     }
//   }

// }
