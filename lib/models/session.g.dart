// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session.dart';

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

Serializer<Session> _$sessionSerializer = new _$SessionSerializer();

class _$SessionSerializer implements StructuredSerializer<Session> {
  @override
  final Iterable<Type> types = const [Session, _$Session];
  @override
  final String wireName = 'Session';

  @override
  Iterable serialize(Serializers serializers, Session object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'eventId',
      serializers.serialize(object.eventId,
          specifiedType: const FullType(String)),
    ];
    if (object.title != null) {
      result
        ..add('title')
        ..add(serializers.serialize(object.title,
            specifiedType: const FullType(String)));
    }
    if (object.participants != null) {
      result
        ..add('participants')
        ..add(serializers.serialize(object.participants,
            specifiedType: const FullType(BuiltMap,
                const [const FullType(String), const FullType(Participant)])));
    }

    return result;
  }

  @override
  Session deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new SessionBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'eventId':
          result.eventId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'participants':
          result.participants.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltMap, const [
                const FullType(String),
                const FullType(Participant)
              ])) as BuiltMap);
          break;
      }
    }

    return result.build();
  }
}

class _$Session extends Session {
  @override
  final String id;
  @override
  final String eventId;
  @override
  final String title;
  @override
  final BuiltMap<String, Participant> participants;

  factory _$Session([void updates(SessionBuilder b)]) =>
      (new SessionBuilder()..update(updates)).build();

  _$Session._({this.id, this.eventId, this.title, this.participants})
      : super._() {
    if (id == null) throw new BuiltValueNullFieldError('Session', 'id');
    if (eventId == null)
      throw new BuiltValueNullFieldError('Session', 'eventId');
  }

  @override
  Session rebuild(void updates(SessionBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  SessionBuilder toBuilder() => new SessionBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! Session) return false;
    return id == other.id &&
        eventId == other.eventId &&
        title == other.title &&
        participants == other.participants;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, id.hashCode), eventId.hashCode), title.hashCode),
        participants.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Session')
          ..add('id', id)
          ..add('eventId', eventId)
          ..add('title', title)
          ..add('participants', participants))
        .toString();
  }
}

class SessionBuilder implements Builder<Session, SessionBuilder> {
  _$Session _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _eventId;
  String get eventId => _$this._eventId;
  set eventId(String eventId) => _$this._eventId = eventId;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  MapBuilder<String, Participant> _participants;
  MapBuilder<String, Participant> get participants =>
      _$this._participants ??= new MapBuilder<String, Participant>();
  set participants(MapBuilder<String, Participant> participants) =>
      _$this._participants = participants;

  SessionBuilder();

  SessionBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _eventId = _$v.eventId;
      _title = _$v.title;
      _participants = _$v.participants?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Session other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$Session;
  }

  @override
  void update(void updates(SessionBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Session build() {
    _$Session _$result;
    try {
      _$result = _$v ??
          new _$Session._(
              id: id,
              eventId: eventId,
              title: title,
              participants: _participants?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'participants';
        _participants?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Session', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
