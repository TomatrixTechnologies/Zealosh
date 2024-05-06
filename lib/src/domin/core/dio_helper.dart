// ignore_for_file: avoid_print, deprecated_member_use

import 'package:zealosh/src/domin/core/api_endpoints.dart';
import 'package:dio/dio.dart';
import 'package:zealosh/utils/shared_preference/shared_preferences_keys.dart';
import 'package:zealosh/utils/shared_preference/token_manager.dart';

final BaseOptions dioOptions = BaseOptions(
  baseUrl: ApiEndpoints.apiBaseURL,
  contentType: 'application/json',
  followRedirects: false,
  validateStatus: (status) {
    return true;
    // return status! < 500;
  },
);

class JwtInterceptor extends Interceptor {
  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    try {
      final token = TokenManager.getString(SharedPreferenceKeys.accessToken);
      // final token = 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjk0ODYxOTgyLCJpYXQiOjE2ODk2Nzc5ODIsImp0aSI6IjUxZmRiMjUxNGRiOTRlM2NiNWMyZTQxNzQ3ZjMyMGMyIiwidXNlcl9pZCI6MX0.qu2WJT8FMnkSQY1oGqo--eF36ZvuZ0Xqe66uMR19TOI';
      print("AccessToken is : $token");
      if (token.isNotEmpty) {
        options.headers["Authorization"] = 'Bearer $token';
      }
    } catch (e) {
      print(e);

      // Handle error while fetching/accessing the token.
      // For example, you could log the error or redirect the user to the login screen.
    }

    handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    // Handle specific status codes if needed
    if (response.statusCode == 403) {
      // Handle 403 error case
      // return handler.reject(DioError(requestOptions: ));
    }
    handler.resolve(response);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    // Handle Dio errors here, if needed

    // Check for different Dio error types
    if (err.type == DioErrorType.connectionTimeout) {
      // Handle connection timeout error
      print('Connection Timeout Error: ${err.message}');
      // You can display an appropriate error message to the user or perform any necessary actions
    } else if (err.type == DioErrorType.receiveTimeout) {
      // Handle receive timeout error
      print('Receive Timeout Error: ${err.message}');
    } else if (err.type == DioErrorType.sendTimeout) {
      // Handle send timeout error
      print('Send Timeout Error: ${err.message}');
    } else if (err.type == DioErrorType.badResponse) {
      // Handle response error (e.g., 4xx, 5xx status codes)
      print('Response Error: ${err.message}');
      // You can extract the response data and status code from the DioError instance
      // and display a meaningful error message to the user
      if (err.response != null) {
        print('Status Code: ${err.response!.statusCode}');
        print('Response Data: ${err.response!.data}');
      }
    } else if (err.type == DioErrorType.cancel) {
      // Handle cancel error (request canceled)
      print('Request Canceled Error: ${err.message}');
    }

    // Call super.onError to propagate the error to other Dio error interceptors
    super.onError(err, handler);
  }
}

final Dio dioClient = Dio()
  ..options = dioOptions
  ..interceptors.add(JwtInterceptor());
