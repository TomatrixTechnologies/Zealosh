import 'package:json_annotation/json_annotation.dart';
part 'login_resp.g.dart';

@JsonSerializable()
class LoginResponse {
  @JsonKey(name: 'refresh')
  String refreshToken;
  @JsonKey(name: 'access')
  String accessToken;

  LoginResponse({
    required this.refreshToken,
    required this.accessToken,
  });

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);
  Map<String, dynamic> toJson() => _$LoginResponseToJson(this);
}
