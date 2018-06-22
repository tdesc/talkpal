// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'userPayload.dart';

// **************************************************************************
// Generator: BuiltValueGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line
// ignore_for_file: annotate_overrides
// ignore_for_file: avoid_annotating_with_dynamic
// ignore_for_file: avoid_returning_this
// ignore_for_file: omit_local_variable_types
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: sort_constructors_first

class _$UserPayload extends UserPayload {
  @override
  final User user;
  @override
  final String tag;

  factory _$UserPayload([void updates(UserPayloadBuilder b)]) =>
      (new UserPayloadBuilder()..update(updates)).build();

  _$UserPayload._({this.user, this.tag}) : super._();

  @override
  UserPayload rebuild(void updates(UserPayloadBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  UserPayloadBuilder toBuilder() => new UserPayloadBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! UserPayload) return false;
    return user == other.user && tag == other.tag;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, user.hashCode), tag.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UserPayload')
          ..add('user', user)
          ..add('tag', tag))
        .toString();
  }
}

class UserPayloadBuilder implements Builder<UserPayload, UserPayloadBuilder> {
  _$UserPayload _$v;

  UserBuilder _user;
  UserBuilder get user => _$this._user ??= new UserBuilder();
  set user(UserBuilder user) => _$this._user = user;

  String _tag;
  String get tag => _$this._tag;
  set tag(String tag) => _$this._tag = tag;

  UserPayloadBuilder();

  UserPayloadBuilder get _$this {
    if (_$v != null) {
      _user = _$v.user?.toBuilder();
      _tag = _$v.tag;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserPayload other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$UserPayload;
  }

  @override
  void update(void updates(UserPayloadBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$UserPayload build() {
    _$UserPayload _$result;
    try {
      _$result = _$v ?? new _$UserPayload._(user: _user?.build(), tag: tag);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'user';
        _user?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'UserPayload', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
