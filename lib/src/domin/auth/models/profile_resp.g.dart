// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_resp.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Country _$CountryFromJson(Map<String, dynamic> json) => Country(
      id: json['id'] as int,
      name: json['name'] as String,
      currencyName: json['currency_name'] as String,
      symbol: json['symbol'] as String,
      symbolNative: json['symbol_native'] as String,
      decimalDigits: json['decimal_digits'] as int,
      code: json['code'] as String,
      namePlural: json['name_plural'] as String,
      conversionValue: json['conversion_value'] as String,
    );

Map<String, dynamic> _$CountryToJson(Country instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'currency_name': instance.currencyName,
      'symbol': instance.symbol,
      'symbol_native': instance.symbolNative,
      'decimal_digits': instance.decimalDigits,
      'code': instance.code,
      'name_plural': instance.namePlural,
      'conversion_value': instance.conversionValue,
    };

ProfileResponse _$ProfileResponseFromJson(Map<String, dynamic> json) =>
    ProfileResponse(
      id: json['id'] as int,
      fullname: json['fullname'] as String?,
      country: Country.fromJson(json['country'] as Map<String, dynamic>),
      lastLogin: DateTime.parse(json['last_login'] as String),
      isSuperuser: json['is_superuser'] as bool,
      username: json['username'] as String?,
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      email: json['email'] as String?,
      isStaff: json['is_staff'] as bool,
      isActive: json['is_active'] as bool,
      dateJoined: DateTime.parse(json['date_joined'] as String),
      phoneNumber: json['phone_number'] as String?,
      city: json['city'] as String?,
      buildingName: json['building_name'] as String?,
      streetName: json['street_name'] as String?,
      companyName: json['company_name'] as String?,
      contactPerson: json['contact_person'] as String?,
      trn: json['trn'] as String?,
    );

Map<String, dynamic> _$ProfileResponseToJson(ProfileResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fullname': instance.fullname,
      'country': instance.country,
      'last_login': instance.lastLogin.toIso8601String(),
      'is_superuser': instance.isSuperuser,
      'username': instance.username,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'email': instance.email,
      'is_staff': instance.isStaff,
      'is_active': instance.isActive,
      'date_joined': instance.dateJoined.toIso8601String(),
      'phone_number': instance.phoneNumber,
      'city': instance.city,
      'building_name': instance.buildingName,
      'street_name': instance.streetName,
      'company_name': instance.companyName,
      'contact_person': instance.contactPerson,
      'trn': instance.trn,
    };
