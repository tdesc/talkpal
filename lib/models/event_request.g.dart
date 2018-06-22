// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_request.dart';

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

Serializer<EventRequestPayload> _$eventRequestPayloadSerializer =
    new _$EventRequestPayloadSerializer();
Serializer<EventRequest> _$eventRequestSerializer =
    new _$EventRequestSerializer();

class _$EventRequestPayloadSerializer
    implements StructuredSerializer<EventRequestPayload> {
  @override
  final Iterable<Type> types = const [
    EventRequestPayload,
    _$EventRequestPayload
  ];
  @override
  final String wireName = 'EventRequestPayload';

  @override
  Iterable serialize(Serializers serializers, EventRequestPayload object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  EventRequestPayload deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new EventRequestPayloadBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$EventRequestSerializer implements StructuredSerializer<EventRequest> {
  @override
  final Iterable<Type> types = const [EventRequest, _$EventRequest];
  @override
  final String wireName = 'EventRequest';

  @override
  Iterable serialize(Serializers serializers, EventRequest object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[
      'uid',
      serializers.serialize(object.uid, specifiedType: const FullType(String)),
      'type',
      serializers.serialize(object.type, specifiedType: const FullType(String)),
      'payload',
      serializers.serialize(object.payload,
          specifiedType: const FullType(EventRequestPayload)),
    ];

    return result;
  }

  @override
  EventRequest deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new EventRequestBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'payload':
          result.payload.replace(serializers.deserialize(value,
                  specifiedType: const FullType(EventRequestPayload))
              as EventRequestPayload);
          break;
      }
    }

    return result.build();
  }
}

class _$EventRequestPayload extends EventRequestPayload {
  @override
  final String title;

  factory _$EventRequestPayload([void updates(EventRequestPayloadBuilder b)]) =>
      (new EventRequestPayloadBuilder()..update(updates)).build();

  _$EventRequestPayload._({this.title}) : super._() {
    if (title == null)
      throw new BuiltValueNullFieldError('EventRequestPayload', 'title');
  }

  @override
  EventRequestPayload rebuild(void updates(EventRequestPayloadBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  EventRequestPayloadBuilder toBuilder() =>
      new EventRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! EventRequestPayload) return false;
    return title == other.title;
  }

  @override
  int get hashCode {
    return $jf($jc(0, title.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('EventRequestPayload')
          ..add('title', title))
        .toString();
  }
}

class EventRequestPayloadBuilder
    implements Builder<EventRequestPayload, EventRequestPayloadBuilder> {
  _$EventRequestPayload _$v;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  EventRequestPayloadBuilder();

  EventRequestPayloadBuilder get _$this {
    if (_$v != null) {
      _title = _$v.title;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EventRequestPayload other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$EventRequestPayload;
  }

  @override
  void update(void updates(EventRequestPayloadBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$EventRequestPayload build() {
    final _$result = _$v ?? new _$EventRequestPayload._(title: title);
    replace(_$result);
    return _$result;
  }
}

class _$EventRequest extends EventRequest {
  @override
  final String uid;
  @override
  final String type;
  @override
  final EventRequestPayload payload;

  factory _$EventRequest([void updates(EventRequestBuilder b)]) =>
      (new EventRequestBuilder()..update(updates)).build();

  _$EventRequest._({this.uid, this.type, this.payload}) : super._() {
    if (uid == null) throw new BuiltValueNullFieldError('EventRequest', 'uid');
    if (type == null)
      throw new BuiltValueNullFieldError('EventRequest', 'type');
    if (payload == null)
      throw new BuiltValueNullFieldError('EventRequest', 'payload');
  }

  @override
  EventRequest rebuild(void updates(EventRequestBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  EventRequestBuilder toBuilder() => new EventRequestBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! EventRequest) return false;
    return uid == other.uid && type == other.type && payload == other.payload;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, uid.hashCode), type.hashCode), payload.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('EventRequest')
          ..add('uid', uid)
          ..add('type', type)
          ..add('payload', payload))
        .toString();
  }
}

class EventRequestBuilder
    implements Builder<EventRequest, EventRequestBuilder> {
  _$EventRequest _$v;

  String _uid;
  String get uid => _$this._uid;
  set uid(String uid) => _$this._uid = uid;

  String _type;
  String get type => _$this._type;
  set type(String type) => _$this._type = type;

  EventRequestPayloadBuilder _payload;
  EventRequestPayloadBuilder get payload =>
      _$this._payload ??= new EventRequestPayloadBuilder();
  set payload(EventRequestPayloadBuilder payload) => _$this._payload = payload;

  EventRequestBuilder();

  EventRequestBuilder get _$this {
    if (_$v != null) {
      _uid = _$v.uid;
      _type = _$v.type;
      _payload = _$v.payload?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EventRequest other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$EventRequest;
  }

  @override
  void update(void updates(EventRequestBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$EventRequest build() {
    _$EventRequest _$result;
    try {
      _$result = _$v ??
          new _$EventRequest._(uid: uid, type: type, payload: payload.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'payload';
        payload.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'EventRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
