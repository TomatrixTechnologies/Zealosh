// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username, String password) login,
    required TResult Function(String accessToken, String refreshToken)
        refreshToken,
    required TResult Function() getProfile,
    required TResult Function() getcountries,
    required TResult Function() logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username, String password)? login,
    TResult? Function(String accessToken, String refreshToken)? refreshToken,
    TResult? Function()? getProfile,
    TResult? Function()? getcountries,
    TResult? Function()? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username, String password)? login,
    TResult Function(String accessToken, String refreshToken)? refreshToken,
    TResult Function()? getProfile,
    TResult Function()? getcountries,
    TResult Function()? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_ResreshToken value) refreshToken,
    required TResult Function(_GetProfile value) getProfile,
    required TResult Function(_GetCountries value) getcountries,
    required TResult Function(_Logout value) logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
    TResult? Function(_ResreshToken value)? refreshToken,
    TResult? Function(_GetProfile value)? getProfile,
    TResult? Function(_GetCountries value)? getcountries,
    TResult? Function(_Logout value)? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_ResreshToken value)? refreshToken,
    TResult Function(_GetProfile value)? getProfile,
    TResult Function(_GetCountries value)? getcountries,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoginImplCopyWith<$Res> {
  factory _$$LoginImplCopyWith(
          _$LoginImpl value, $Res Function(_$LoginImpl) then) =
      __$$LoginImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String username, String password});
}

/// @nodoc
class __$$LoginImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LoginImpl>
    implements _$$LoginImplCopyWith<$Res> {
  __$$LoginImplCopyWithImpl(
      _$LoginImpl _value, $Res Function(_$LoginImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? password = null,
  }) {
    return _then(_$LoginImpl(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginImpl implements _Login {
  const _$LoginImpl({required this.username, required this.password});

  @override
  final String username;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.login(username: $username, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginImpl &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, username, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginImplCopyWith<_$LoginImpl> get copyWith =>
      __$$LoginImplCopyWithImpl<_$LoginImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username, String password) login,
    required TResult Function(String accessToken, String refreshToken)
        refreshToken,
    required TResult Function() getProfile,
    required TResult Function() getcountries,
    required TResult Function() logout,
  }) {
    return login(username, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username, String password)? login,
    TResult? Function(String accessToken, String refreshToken)? refreshToken,
    TResult? Function()? getProfile,
    TResult? Function()? getcountries,
    TResult? Function()? logout,
  }) {
    return login?.call(username, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username, String password)? login,
    TResult Function(String accessToken, String refreshToken)? refreshToken,
    TResult Function()? getProfile,
    TResult Function()? getcountries,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(username, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_ResreshToken value) refreshToken,
    required TResult Function(_GetProfile value) getProfile,
    required TResult Function(_GetCountries value) getcountries,
    required TResult Function(_Logout value) logout,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
    TResult? Function(_ResreshToken value)? refreshToken,
    TResult? Function(_GetProfile value)? getProfile,
    TResult? Function(_GetCountries value)? getcountries,
    TResult? Function(_Logout value)? logout,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_ResreshToken value)? refreshToken,
    TResult Function(_GetProfile value)? getProfile,
    TResult Function(_GetCountries value)? getcountries,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class _Login implements AuthEvent {
  const factory _Login(
      {required final String username,
      required final String password}) = _$LoginImpl;

  String get username;
  String get password;
  @JsonKey(ignore: true)
  _$$LoginImplCopyWith<_$LoginImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResreshTokenImplCopyWith<$Res> {
  factory _$$ResreshTokenImplCopyWith(
          _$ResreshTokenImpl value, $Res Function(_$ResreshTokenImpl) then) =
      __$$ResreshTokenImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String accessToken, String refreshToken});
}

/// @nodoc
class __$$ResreshTokenImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$ResreshTokenImpl>
    implements _$$ResreshTokenImplCopyWith<$Res> {
  __$$ResreshTokenImplCopyWithImpl(
      _$ResreshTokenImpl _value, $Res Function(_$ResreshTokenImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? refreshToken = null,
  }) {
    return _then(_$ResreshTokenImpl(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ResreshTokenImpl implements _ResreshToken {
  const _$ResreshTokenImpl(
      {required this.accessToken, required this.refreshToken});

  @override
  final String accessToken;
  @override
  final String refreshToken;

  @override
  String toString() {
    return 'AuthEvent.refreshToken(accessToken: $accessToken, refreshToken: $refreshToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResreshTokenImpl &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken));
  }

  @override
  int get hashCode => Object.hash(runtimeType, accessToken, refreshToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResreshTokenImplCopyWith<_$ResreshTokenImpl> get copyWith =>
      __$$ResreshTokenImplCopyWithImpl<_$ResreshTokenImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username, String password) login,
    required TResult Function(String accessToken, String refreshToken)
        refreshToken,
    required TResult Function() getProfile,
    required TResult Function() getcountries,
    required TResult Function() logout,
  }) {
    return refreshToken(accessToken, this.refreshToken);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username, String password)? login,
    TResult? Function(String accessToken, String refreshToken)? refreshToken,
    TResult? Function()? getProfile,
    TResult? Function()? getcountries,
    TResult? Function()? logout,
  }) {
    return refreshToken?.call(accessToken, this.refreshToken);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username, String password)? login,
    TResult Function(String accessToken, String refreshToken)? refreshToken,
    TResult Function()? getProfile,
    TResult Function()? getcountries,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (refreshToken != null) {
      return refreshToken(accessToken, this.refreshToken);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_ResreshToken value) refreshToken,
    required TResult Function(_GetProfile value) getProfile,
    required TResult Function(_GetCountries value) getcountries,
    required TResult Function(_Logout value) logout,
  }) {
    return refreshToken(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
    TResult? Function(_ResreshToken value)? refreshToken,
    TResult? Function(_GetProfile value)? getProfile,
    TResult? Function(_GetCountries value)? getcountries,
    TResult? Function(_Logout value)? logout,
  }) {
    return refreshToken?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_ResreshToken value)? refreshToken,
    TResult Function(_GetProfile value)? getProfile,
    TResult Function(_GetCountries value)? getcountries,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) {
    if (refreshToken != null) {
      return refreshToken(this);
    }
    return orElse();
  }
}

abstract class _ResreshToken implements AuthEvent {
  const factory _ResreshToken(
      {required final String accessToken,
      required final String refreshToken}) = _$ResreshTokenImpl;

  String get accessToken;
  String get refreshToken;
  @JsonKey(ignore: true)
  _$$ResreshTokenImplCopyWith<_$ResreshTokenImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetProfileImplCopyWith<$Res> {
  factory _$$GetProfileImplCopyWith(
          _$GetProfileImpl value, $Res Function(_$GetProfileImpl) then) =
      __$$GetProfileImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetProfileImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$GetProfileImpl>
    implements _$$GetProfileImplCopyWith<$Res> {
  __$$GetProfileImplCopyWithImpl(
      _$GetProfileImpl _value, $Res Function(_$GetProfileImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetProfileImpl implements _GetProfile {
  const _$GetProfileImpl();

  @override
  String toString() {
    return 'AuthEvent.getProfile()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetProfileImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username, String password) login,
    required TResult Function(String accessToken, String refreshToken)
        refreshToken,
    required TResult Function() getProfile,
    required TResult Function() getcountries,
    required TResult Function() logout,
  }) {
    return getProfile();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username, String password)? login,
    TResult? Function(String accessToken, String refreshToken)? refreshToken,
    TResult? Function()? getProfile,
    TResult? Function()? getcountries,
    TResult? Function()? logout,
  }) {
    return getProfile?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username, String password)? login,
    TResult Function(String accessToken, String refreshToken)? refreshToken,
    TResult Function()? getProfile,
    TResult Function()? getcountries,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (getProfile != null) {
      return getProfile();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_ResreshToken value) refreshToken,
    required TResult Function(_GetProfile value) getProfile,
    required TResult Function(_GetCountries value) getcountries,
    required TResult Function(_Logout value) logout,
  }) {
    return getProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
    TResult? Function(_ResreshToken value)? refreshToken,
    TResult? Function(_GetProfile value)? getProfile,
    TResult? Function(_GetCountries value)? getcountries,
    TResult? Function(_Logout value)? logout,
  }) {
    return getProfile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_ResreshToken value)? refreshToken,
    TResult Function(_GetProfile value)? getProfile,
    TResult Function(_GetCountries value)? getcountries,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) {
    if (getProfile != null) {
      return getProfile(this);
    }
    return orElse();
  }
}

abstract class _GetProfile implements AuthEvent {
  const factory _GetProfile() = _$GetProfileImpl;
}

/// @nodoc
abstract class _$$GetCountriesImplCopyWith<$Res> {
  factory _$$GetCountriesImplCopyWith(
          _$GetCountriesImpl value, $Res Function(_$GetCountriesImpl) then) =
      __$$GetCountriesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetCountriesImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$GetCountriesImpl>
    implements _$$GetCountriesImplCopyWith<$Res> {
  __$$GetCountriesImplCopyWithImpl(
      _$GetCountriesImpl _value, $Res Function(_$GetCountriesImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetCountriesImpl implements _GetCountries {
  const _$GetCountriesImpl();

  @override
  String toString() {
    return 'AuthEvent.getcountries()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetCountriesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username, String password) login,
    required TResult Function(String accessToken, String refreshToken)
        refreshToken,
    required TResult Function() getProfile,
    required TResult Function() getcountries,
    required TResult Function() logout,
  }) {
    return getcountries();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username, String password)? login,
    TResult? Function(String accessToken, String refreshToken)? refreshToken,
    TResult? Function()? getProfile,
    TResult? Function()? getcountries,
    TResult? Function()? logout,
  }) {
    return getcountries?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username, String password)? login,
    TResult Function(String accessToken, String refreshToken)? refreshToken,
    TResult Function()? getProfile,
    TResult Function()? getcountries,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (getcountries != null) {
      return getcountries();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_ResreshToken value) refreshToken,
    required TResult Function(_GetProfile value) getProfile,
    required TResult Function(_GetCountries value) getcountries,
    required TResult Function(_Logout value) logout,
  }) {
    return getcountries(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
    TResult? Function(_ResreshToken value)? refreshToken,
    TResult? Function(_GetProfile value)? getProfile,
    TResult? Function(_GetCountries value)? getcountries,
    TResult? Function(_Logout value)? logout,
  }) {
    return getcountries?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_ResreshToken value)? refreshToken,
    TResult Function(_GetProfile value)? getProfile,
    TResult Function(_GetCountries value)? getcountries,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) {
    if (getcountries != null) {
      return getcountries(this);
    }
    return orElse();
  }
}

abstract class _GetCountries implements AuthEvent {
  const factory _GetCountries() = _$GetCountriesImpl;
}

/// @nodoc
abstract class _$$LogoutImplCopyWith<$Res> {
  factory _$$LogoutImplCopyWith(
          _$LogoutImpl value, $Res Function(_$LogoutImpl) then) =
      __$$LogoutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogoutImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LogoutImpl>
    implements _$$LogoutImplCopyWith<$Res> {
  __$$LogoutImplCopyWithImpl(
      _$LogoutImpl _value, $Res Function(_$LogoutImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LogoutImpl implements _Logout {
  const _$LogoutImpl();

  @override
  String toString() {
    return 'AuthEvent.logout()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogoutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username, String password) login,
    required TResult Function(String accessToken, String refreshToken)
        refreshToken,
    required TResult Function() getProfile,
    required TResult Function() getcountries,
    required TResult Function() logout,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username, String password)? login,
    TResult? Function(String accessToken, String refreshToken)? refreshToken,
    TResult? Function()? getProfile,
    TResult? Function()? getcountries,
    TResult? Function()? logout,
  }) {
    return logout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username, String password)? login,
    TResult Function(String accessToken, String refreshToken)? refreshToken,
    TResult Function()? getProfile,
    TResult Function()? getcountries,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_ResreshToken value) refreshToken,
    required TResult Function(_GetProfile value) getProfile,
    required TResult Function(_GetCountries value) getcountries,
    required TResult Function(_Logout value) logout,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Login value)? login,
    TResult? Function(_ResreshToken value)? refreshToken,
    TResult? Function(_GetProfile value)? getProfile,
    TResult? Function(_GetCountries value)? getcountries,
    TResult? Function(_Logout value)? logout,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_ResreshToken value)? refreshToken,
    TResult Function(_GetProfile value)? getProfile,
    TResult Function(_GetCountries value)? getcountries,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class _Logout implements AuthEvent {
  const factory _Logout() = _$LogoutImpl;
}

/// @nodoc
mixin _$AuthState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;
  String get errorMsg => throw _privateConstructorUsedError;
  bool get isLoggedIn => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String? get accessToken => throw _privateConstructorUsedError;
  String? get refreshToken => throw _privateConstructorUsedError;
  ProfileResponse? get profile => throw _privateConstructorUsedError;
  List<Country> get countries => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool hasError,
      String errorMsg,
      bool isLoggedIn,
      String username,
      String password,
      String? accessToken,
      String? refreshToken,
      ProfileResponse? profile,
      List<Country> countries});
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? hasError = null,
    Object? errorMsg = null,
    Object? isLoggedIn = null,
    Object? username = null,
    Object? password = null,
    Object? accessToken = freezed,
    Object? refreshToken = freezed,
    Object? profile = freezed,
    Object? countries = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMsg: null == errorMsg
          ? _value.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as String,
      isLoggedIn: null == isLoggedIn
          ? _value.isLoggedIn
          : isLoggedIn // ignore: cast_nullable_to_non_nullable
              as bool,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      accessToken: freezed == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
      refreshToken: freezed == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
      profile: freezed == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as ProfileResponse?,
      countries: null == countries
          ? _value.countries
          : countries // ignore: cast_nullable_to_non_nullable
              as List<Country>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool hasError,
      String errorMsg,
      bool isLoggedIn,
      String username,
      String password,
      String? accessToken,
      String? refreshToken,
      ProfileResponse? profile,
      List<Country> countries});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? hasError = null,
    Object? errorMsg = null,
    Object? isLoggedIn = null,
    Object? username = null,
    Object? password = null,
    Object? accessToken = freezed,
    Object? refreshToken = freezed,
    Object? profile = freezed,
    Object? countries = null,
  }) {
    return _then(_$InitialImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMsg: null == errorMsg
          ? _value.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as String,
      isLoggedIn: null == isLoggedIn
          ? _value.isLoggedIn
          : isLoggedIn // ignore: cast_nullable_to_non_nullable
              as bool,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      accessToken: freezed == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
      refreshToken: freezed == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
      profile: freezed == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as ProfileResponse?,
      countries: null == countries
          ? _value._countries
          : countries // ignore: cast_nullable_to_non_nullable
              as List<Country>,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {required this.isLoading,
      required this.hasError,
      required this.errorMsg,
      required this.isLoggedIn,
      required this.username,
      required this.password,
      this.accessToken,
      this.refreshToken,
      this.profile,
      required final List<Country> countries})
      : _countries = countries;

  @override
  final bool isLoading;
  @override
  final bool hasError;
  @override
  final String errorMsg;
  @override
  final bool isLoggedIn;
  @override
  final String username;
  @override
  final String password;
  @override
  final String? accessToken;
  @override
  final String? refreshToken;
  @override
  final ProfileResponse? profile;
  final List<Country> _countries;
  @override
  List<Country> get countries {
    if (_countries is EqualUnmodifiableListView) return _countries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_countries);
  }

  @override
  String toString() {
    return 'AuthState(isLoading: $isLoading, hasError: $hasError, errorMsg: $errorMsg, isLoggedIn: $isLoggedIn, username: $username, password: $password, accessToken: $accessToken, refreshToken: $refreshToken, profile: $profile, countries: $countries)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.hasError, hasError) ||
                other.hasError == hasError) &&
            (identical(other.errorMsg, errorMsg) ||
                other.errorMsg == errorMsg) &&
            (identical(other.isLoggedIn, isLoggedIn) ||
                other.isLoggedIn == isLoggedIn) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken) &&
            (identical(other.profile, profile) || other.profile == profile) &&
            const DeepCollectionEquality()
                .equals(other._countries, _countries));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      hasError,
      errorMsg,
      isLoggedIn,
      username,
      password,
      accessToken,
      refreshToken,
      profile,
      const DeepCollectionEquality().hash(_countries));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements AuthState {
  const factory _Initial(
      {required final bool isLoading,
      required final bool hasError,
      required final String errorMsg,
      required final bool isLoggedIn,
      required final String username,
      required final String password,
      final String? accessToken,
      final String? refreshToken,
      final ProfileResponse? profile,
      required final List<Country> countries}) = _$InitialImpl;

  @override
  bool get isLoading;
  @override
  bool get hasError;
  @override
  String get errorMsg;
  @override
  bool get isLoggedIn;
  @override
  String get username;
  @override
  String get password;
  @override
  String? get accessToken;
  @override
  String? get refreshToken;
  @override
  ProfileResponse? get profile;
  @override
  List<Country> get countries;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
