// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'participant.dart';

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

Serializer<Participant> _$participantSerializer = new _$ParticipantSerializer();
Serializer<ParticipantPayload> _$participantPayloadSerializer =
    new _$ParticipantPayloadSerializer();

class _$ParticipantSerializer implements StructuredSerializer<Participant> {
  @override
  final Iterable<Type> types = const [Participant, _$Participant];
  @override
  final String wireName = 'Participant';

  @override
  Iterable serialize(Serializers serializers, Participant object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[
      'uid',
      serializers.serialize(object.uid, specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'volume',
      serializers.serialize(object.volume, specifiedType: const FullType(int)),
    ];
    if (object.mute != null) {
      result
        ..add('mute')
        ..add(serializers.serialize(object.mute,
            specifiedType: const FullType(bool)));
    }
    if (object.camera != null) {
      result
        ..add('camera')
        ..add(serializers.serialize(object.camera,
            specifiedType: const FullType(bool)));
    }
    if (object.channel != null) {
      result
        ..add('channel')
        ..add(serializers.serialize(object.channel,
            specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  Participant deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new ParticipantBuilder();

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
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'volume':
          result.volume = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'mute':
          result.mute = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'camera':
          result.camera = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'channel':
          result.channel = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$ParticipantPayloadSerializer
    implements StructuredSerializer<ParticipantPayload> {
  @override
  final Iterable<Type> types = const [ParticipantPayload, _$ParticipantPayload];
  @override
  final String wireName = 'ParticipantPayload';

  @override
  Iterable serialize(Serializers serializers, ParticipantPayload object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[
      'sessionId',
      serializers.serialize(object.sessionId,
          specifiedType: const FullType(String)),
    ];
    if (object.participant != null) {
      result
        ..add('participant')
        ..add(serializers.serialize(object.participant,
            specifiedType: const FullType(Participant)));
    }

    return result;
  }

  @override
  ParticipantPayload deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new ParticipantPayloadBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'sessionId':
          result.sessionId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'participant':
          result.participant.replace(serializers.deserialize(value,
              specifiedType: const FullType(Participant)) as Participant);
          break;
      }
    }

    return result.build();
  }
}

class _$Participant extends Participant {
  @override
  final String uid;
  @override
  final String name;
  @override
  final int volume;
  @override
  final bool mute;
  @override
  final bool camera;
  @override
  final String channel;

  factory _$Participant([void updates(ParticipantBuilder b)]) =>
      (new ParticipantBuilder()..update(updates)).build();

  _$Participant._(
      {this.uid, this.name, this.volume, this.mute, this.camera, this.channel})
      : super._() {
    if (uid == null) throw new BuiltValueNullFieldError('Participant', 'uid');
    if (name == null) throw new BuiltValueNullFieldError('Participant', 'name');
    if (volume == null)
      throw new BuiltValueNullFieldError('Participant', 'volume');
  }

  @override
  Participant rebuild(void updates(ParticipantBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  ParticipantBuilder toBuilder() => new ParticipantBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! Participant) return false;
    return uid == other.uid &&
        name == other.name &&
        volume == other.volume &&
        mute == other.mute &&
        camera == other.camera &&
        channel == other.channel;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc($jc(0, uid.hashCode), name.hashCode), volume.hashCode),
                mute.hashCode),
            camera.hashCode),
        channel.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Participant')
          ..add('uid', uid)
          ..add('name', name)
          ..add('volume', volume)
          ..add('mute', mute)
          ..add('camera', camera)
          ..add('channel', channel))
        .toString();
  }
}

class ParticipantBuilder implements Builder<Participant, ParticipantBuilder> {
  _$Participant _$v;

  String _uid;
  String get uid => _$this._uid;
  set uid(String uid) => _$this._uid = uid;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  int _volume;
  int get volume => _$this._volume;
  set volume(int volume) => _$this._volume = volume;

  bool _mute;
  bool get mute => _$this._mute;
  set mute(bool mute) => _$this._mute = mute;

  bool _camera;
  bool get camera => _$this._camera;
  set camera(bool camera) => _$this._camera = camera;

  String _channel;
  String get channel => _$this._channel;
  set channel(String channel) => _$this._channel = channel;

  ParticipantBuilder();

  ParticipantBuilder get _$this {
    if (_$v != null) {
      _uid = _$v.uid;
      _name = _$v.name;
      _volume = _$v.volume;
      _mute = _$v.mute;
      _camera = _$v.camera;
      _channel = _$v.channel;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Participant other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$Participant;
  }

  @override
  void update(void updates(ParticipantBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Participant build() {
    final _$result = _$v ??
        new _$Participant._(
            uid: uid,
            name: name,
            volume: volume,
            mute: mute,
            camera: camera,
            channel: channel);
    replace(_$result);
    return _$result;
  }
}

class _$ParticipantPayload extends ParticipantPayload {
  @override
  final String sessionId;
  @override
  final Participant participant;

  factory _$ParticipantPayload([void updates(ParticipantPayloadBuilder b)]) =>
      (new ParticipantPayloadBuilder()..update(updates)).build();

  _$ParticipantPayload._({this.sessionId, this.participant}) : super._() {
    if (sessionId == null)
      throw new BuiltValueNullFieldError('ParticipantPayload', 'sessionId');
  }

  @override
  ParticipantPayload rebuild(void updates(ParticipantPayloadBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  ParticipantPayloadBuilder toBuilder() =>
      new ParticipantPayloadBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! ParticipantPayload) return false;
    return sessionId == other.sessionId && participant == other.participant;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, sessionId.hashCode), participant.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ParticipantPayload')
          ..add('sessionId', sessionId)
          ..add('participant', participant))
        .toString();
  }
}

class ParticipantPayloadBuilder
    implements Builder<ParticipantPayload, ParticipantPayloadBuilder> {
  _$ParticipantPayload _$v;

  String _sessionId;
  String get sessionId => _$this._sessionId;
  set sessionId(String sessionId) => _$this._sessionId = sessionId;

  ParticipantBuilder _participant;
  ParticipantBuilder get participant =>
      _$this._participant ??= new ParticipantBuilder();
  set participant(ParticipantBuilder participant) =>
      _$this._participant = participant;

  ParticipantPayloadBuilder();

  ParticipantPayloadBuilder get _$this {
    if (_$v != null) {
      _sessionId = _$v.sessionId;
      _participant = _$v.participant?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ParticipantPayload other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$ParticipantPayload;
  }

  @override
  void update(void updates(ParticipantPayloadBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$ParticipantPayload build() {
    _$ParticipantPayload _$result;
    try {
      _$result = _$v ??
          new _$ParticipantPayload._(
              sessionId: sessionId, participant: _participant?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'participant';
        _participant?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ParticipantPayload', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
