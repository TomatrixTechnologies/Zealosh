import 'package:json_annotation/json_annotation.dart';

part 'profile_resp.g.dart';

@JsonSerializable()
class Country {
  int id;
  @JsonKey(name: 'name')
  String name;
  @JsonKey(name: 'currency_name')
  String currencyName;
  String symbol;
  @JsonKey(name: 'symbol_native')
  String symbolNative;
  @JsonKey(name: 'decimal_digits')
  int decimalDigits;
  String code;
  @JsonKey(name: 'name_plural')
  String namePlural;
  @JsonKey(name: 'conversion_value')
  String conversionValue;

  Country({
    required this.id,
    required this.name,
    required this.currencyName,
    required this.symbol,
    required this.symbolNative,
    required this.decimalDigits,
    required this.code,
    required this.namePlural,
    required this.conversionValue,
  });

  factory Country.fromJson(Map<String, dynamic> json) => _$CountryFromJson(json);

  Map<String, dynamic> toJson() => _$CountryToJson(this);
}

@JsonSerializable()
class ProfileResponse {
  int id;
  String? fullname;
  Country country; // Updated to use the Country class
  @JsonKey(name: 'last_login')
  DateTime lastLogin;
  @JsonKey(name: 'is_superuser')
  bool isSuperuser;
  String? username;
  @JsonKey(name: 'first_name')
  String? firstName;
  @JsonKey(name: 'last_name')
  String? lastName;
  String? email;
  @JsonKey(name: 'is_staff')
  bool isStaff;
  @JsonKey(name: 'is_active')
  bool isActive;
  @JsonKey(name: 'date_joined')
  DateTime dateJoined;
  @JsonKey(name: 'phone_number')
  String? phoneNumber;
  String? city;
  @JsonKey(name: 'building_name')
  String? buildingName;
  @JsonKey(name: 'street_name')
  String? streetName;
  @JsonKey(name: 'company_name')
  String? companyName;
  @JsonKey(name: 'contact_person')
  String? contactPerson;
  String? trn;

  ProfileResponse({
    required this.id,
    this.fullname,
    required this.country,
    required this.lastLogin,
    required this.isSuperuser,
    this.username,
    this.firstName,
    this.lastName,
    this.email,
    required this.isStaff,
    required this.isActive,
    required this.dateJoined,
    this.phoneNumber,
    this.city,
    this.buildingName,
    this.streetName,
    this.companyName,
    this.contactPerson,
    this.trn,
  });

  factory ProfileResponse.fromJson(Map<String, dynamic> json) =>
      _$ProfileResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ProfileResponseToJson(this);
}
