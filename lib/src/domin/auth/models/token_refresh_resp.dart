import 'package:json_annotation/json_annotation.dart';

part 'token_refresh_resp.g.dart';

@JsonSerializable()
class TokenRefreshResponse {
  @JsonKey(name: 'access')
  String access;

  TokenRefreshResponse({
    required this.access,
  });

  factory TokenRefreshResponse.fromJson(Map<String, dynamic> json) =>
      _$TokenRefreshResponseFromJson(json);

  Map<String, dynamic> toJson() => _$TokenRefreshResponseToJson(this);
}
