// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'account.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Account _$AccountFromJson(Map<String, dynamic> json) {
  return _Account.fromJson(json);
}

/// @nodoc
mixin _$Account {
  /// アカウントID
  String get accountId => throw _privateConstructorUsedError;

  /// アカウント名
  String get accountName => throw _privateConstructorUsedError;

  /// アカウントに使用する画像のURL
  String get accountImageUrl => throw _privateConstructorUsedError;

  /// UserCredentialのuid
  String get accountUid => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AccountCopyWith<Account> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountCopyWith<$Res> {
  factory $AccountCopyWith(Account value, $Res Function(Account) then) =
      _$AccountCopyWithImpl<$Res>;
  $Res call(
      {String accountId,
      String accountName,
      String accountImageUrl,
      String accountUid});
}

/// @nodoc
class _$AccountCopyWithImpl<$Res> implements $AccountCopyWith<$Res> {
  _$AccountCopyWithImpl(this._value, this._then);

  final Account _value;
  // ignore: unused_field
  final $Res Function(Account) _then;

  @override
  $Res call({
    Object? accountId = freezed,
    Object? accountName = freezed,
    Object? accountImageUrl = freezed,
    Object? accountUid = freezed,
  }) {
    return _then(_value.copyWith(
      accountId: accountId == freezed
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as String,
      accountName: accountName == freezed
          ? _value.accountName
          : accountName // ignore: cast_nullable_to_non_nullable
              as String,
      accountImageUrl: accountImageUrl == freezed
          ? _value.accountImageUrl
          : accountImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      accountUid: accountUid == freezed
          ? _value.accountUid
          : accountUid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_AccountCopyWith<$Res> implements $AccountCopyWith<$Res> {
  factory _$$_AccountCopyWith(
          _$_Account value, $Res Function(_$_Account) then) =
      __$$_AccountCopyWithImpl<$Res>;
  @override
  $Res call(
      {String accountId,
      String accountName,
      String accountImageUrl,
      String accountUid});
}

/// @nodoc
class __$$_AccountCopyWithImpl<$Res> extends _$AccountCopyWithImpl<$Res>
    implements _$$_AccountCopyWith<$Res> {
  __$$_AccountCopyWithImpl(_$_Account _value, $Res Function(_$_Account) _then)
      : super(_value, (v) => _then(v as _$_Account));

  @override
  _$_Account get _value => super._value as _$_Account;

  @override
  $Res call({
    Object? accountId = freezed,
    Object? accountName = freezed,
    Object? accountImageUrl = freezed,
    Object? accountUid = freezed,
  }) {
    return _then(_$_Account(
      accountId: accountId == freezed
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as String,
      accountName: accountName == freezed
          ? _value.accountName
          : accountName // ignore: cast_nullable_to_non_nullable
              as String,
      accountImageUrl: accountImageUrl == freezed
          ? _value.accountImageUrl
          : accountImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      accountUid: accountUid == freezed
          ? _value.accountUid
          : accountUid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Account implements _Account {
  const _$_Account(
      {required this.accountId,
      required this.accountName,
      required this.accountImageUrl,
      required this.accountUid});

  factory _$_Account.fromJson(Map<String, dynamic> json) =>
      _$$_AccountFromJson(json);

  /// アカウントID
  @override
  final String accountId;

  /// アカウント名
  @override
  final String accountName;

  /// アカウントに使用する画像のURL
  @override
  final String accountImageUrl;

  /// UserCredentialのuid
  @override
  final String accountUid;

  @override
  String toString() {
    return 'Account(accountId: $accountId, accountName: $accountName, accountImageUrl: $accountImageUrl, accountUid: $accountUid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Account &&
            const DeepCollectionEquality().equals(other.accountId, accountId) &&
            const DeepCollectionEquality()
                .equals(other.accountName, accountName) &&
            const DeepCollectionEquality()
                .equals(other.accountImageUrl, accountImageUrl) &&
            const DeepCollectionEquality()
                .equals(other.accountUid, accountUid));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(accountId),
      const DeepCollectionEquality().hash(accountName),
      const DeepCollectionEquality().hash(accountImageUrl),
      const DeepCollectionEquality().hash(accountUid));

  @JsonKey(ignore: true)
  @override
  _$$_AccountCopyWith<_$_Account> get copyWith =>
      __$$_AccountCopyWithImpl<_$_Account>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AccountToJson(
      this,
    );
  }
}

abstract class _Account implements Account {
  const factory _Account(
      {required final String accountId,
      required final String accountName,
      required final String accountImageUrl,
      required final String accountUid}) = _$_Account;

  factory _Account.fromJson(Map<String, dynamic> json) = _$_Account.fromJson;

  @override

  /// アカウントID
  String get accountId;
  @override

  /// アカウント名
  String get accountName;
  @override

  /// アカウントに使用する画像のURL
  String get accountImageUrl;
  @override

  /// UserCredentialのuid
  String get accountUid;
  @override
  @JsonKey(ignore: true)
  _$$_AccountCopyWith<_$_Account> get copyWith =>
      throw _privateConstructorUsedError;
}
