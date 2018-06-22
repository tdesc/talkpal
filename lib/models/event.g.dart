// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event.dart';

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

Serializer<Event> _$eventSerializer = new _$EventSerializer();

class _$EventSerializer implements StructuredSerializer<Event> {
  @override
  final Iterable<Type> types = const [Event, _$Event];
  @override
  final String wireName = 'Event';

  @override
  Iterable serialize(Serializers serializers, Event object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'sessions',
      serializers.serialize(object.sessions,
          specifiedType: const FullType(BuiltMap,
              const [const FullType(String), const FullType(Session)])),
    ];
    if (object.description != null) {
      result
        ..add('description')
        ..add(serializers.serialize(object.description,
            specifiedType: const FullType(String)));
    }
    if (object.location != null) {
      result
        ..add('location')
        ..add(serializers.serialize(object.location,
            specifiedType: const FullType(String)));
    }
    if (object.coverUrl != null) {
      result
        ..add('coverUrl')
        ..add(serializers.serialize(object.coverUrl,
            specifiedType: const FullType(String)));
    }
    if (object.date != null) {
      result
        ..add('date')
        ..add(serializers.serialize(object.date,
            specifiedType: const FullType(DateTime)));
    }

    return result;
  }

  @override
  Event deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new EventBuilder();

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
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'location':
          result.location = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'coverUrl':
          result.coverUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'sessions':
          result.sessions.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltMap, const [
                const FullType(String),
                const FullType(Session)
              ])) as BuiltMap);
          break;
      }
    }

    return result.build();
  }
}

class _$Event extends Event {
  @override
  final String id;
  @override
  final String name;
  @override
  final String description;
  @override
  final String location;
  @override
  final String coverUrl;
  @override
  final DateTime date;
  @override
  final BuiltMap<String, Session> sessions;

  factory _$Event([void updates(EventBuilder b)]) =>
      (new EventBuilder()..update(updates)).build();

  _$Event._(
      {this.id,
      this.name,
      this.description,
      this.location,
      this.coverUrl,
      this.date,
      this.sessions})
      : super._() {
    if (id == null) throw new BuiltValueNullFieldError('Event', 'id');
    if (name == null) throw new BuiltValueNullFieldError('Event', 'name');
    if (sessions == null)
      throw new BuiltValueNullFieldError('Event', 'sessions');
  }

  @override
  Event rebuild(void updates(EventBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  EventBuilder toBuilder() => new EventBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! Event) return false;
    return id == other.id &&
        name == other.name &&
        description == other.description &&
        location == other.location &&
        coverUrl == other.coverUrl &&
        date == other.date &&
        sessions == other.sessions;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, id.hashCode), name.hashCode),
                        description.hashCode),
                    location.hashCode),
                coverUrl.hashCode),
            date.hashCode),
        sessions.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Event')
          ..add('id', id)
          ..add('name', name)
          ..add('description', description)
          ..add('location', location)
          ..add('coverUrl', coverUrl)
          ..add('date', date)
          ..add('sessions', sessions))
        .toString();
  }
}

class EventBuilder implements Builder<Event, EventBuilder> {
  _$Event _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  String _location;
  String get location => _$this._location;
  set location(String location) => _$this._location = location;

  String _coverUrl;
  String get coverUrl => _$this._coverUrl;
  set coverUrl(String coverUrl) => _$this._coverUrl = coverUrl;

  DateTime _date;
  DateTime get date => _$this._date;
  set date(DateTime date) => _$this._date = date;

  MapBuilder<String, Session> _sessions;
  MapBuilder<String, Session> get sessions =>
      _$this._sessions ??= new MapBuilder<String, Session>();
  set sessions(MapBuilder<String, Session> sessions) =>
      _$this._sessions = sessions;

  EventBuilder();

  EventBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _name = _$v.name;
      _description = _$v.description;
      _location = _$v.location;
      _coverUrl = _$v.coverUrl;
      _date = _$v.date;
      _sessions = _$v.sessions?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Event other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$Event;
  }

  @override
  void update(void updates(EventBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Event build() {
    _$Event _$result;
    try {
      _$result = _$v ??
          new _$Event._(
              id: id,
              name: name,
              description: description,
              location: location,
              coverUrl: coverUrl,
              date: date,
              sessions: sessions.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'sessions';
        sessions.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Event', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
