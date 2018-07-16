// GENERATED CODE - DO NOT MODIFY BY HAND

part of application;

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

Serializer<AppState> _$appStateSerializer = new _$AppStateSerializer();

class _$AppStateSerializer implements StructuredSerializer<AppState> {
  @override
  final Iterable<Type> types = const [AppState, _$AppState];
  @override
  final String wireName = 'AppState';

  @override
  Iterable serialize(Serializers serializers, AppState object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[
      'user',
      serializers.serialize(object.user, specifiedType: const FullType(User)),
      'news',
      serializers.serialize(object.news, specifiedType: const FullType(News)),
      'events',
      serializers.serialize(object.events,
          specifiedType: const FullType(Events)),
      'sessions',
      serializers.serialize(object.sessions,
          specifiedType: const FullType(Sessions)),
    ];

    return result;
  }

  @override
  AppState deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new AppStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'user':
          result.user.replace(serializers.deserialize(value,
              specifiedType: const FullType(User)) as User);
          break;
        case 'news':
          result.news.replace(serializers.deserialize(value,
              specifiedType: const FullType(News)) as News);
          break;
        case 'events':
          result.events.replace(serializers.deserialize(value,
              specifiedType: const FullType(Events)) as Events);
          break;
        case 'sessions':
          result.sessions.replace(serializers.deserialize(value,
              specifiedType: const FullType(Sessions)) as Sessions);
          break;
      }
    }

    return result.build();
  }
}

class _$AppState extends AppState {
  @override
  final User user;
  @override
  final News news;
  @override
  final Events events;
  @override
  final Sessions sessions;

  factory _$AppState([void updates(AppStateBuilder b)]) =>
      (new AppStateBuilder()..update(updates)).build();

  _$AppState._({this.user, this.news, this.events, this.sessions}) : super._() {
    if (user == null) throw new BuiltValueNullFieldError('AppState', 'user');
    if (news == null) throw new BuiltValueNullFieldError('AppState', 'news');
    if (events == null)
      throw new BuiltValueNullFieldError('AppState', 'events');
    if (sessions == null)
      throw new BuiltValueNullFieldError('AppState', 'sessions');
  }

  @override
  AppState rebuild(void updates(AppStateBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  AppStateBuilder toBuilder() => new AppStateBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! AppState) return false;
    return user == other.user &&
        news == other.news &&
        events == other.events &&
        sessions == other.sessions;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, user.hashCode), news.hashCode), events.hashCode),
        sessions.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AppState')
          ..add('user', user)
          ..add('news', news)
          ..add('events', events)
          ..add('sessions', sessions))
        .toString();
  }
}

class AppStateBuilder implements Builder<AppState, AppStateBuilder> {
  _$AppState _$v;

  UserBuilder _user;
  UserBuilder get user => _$this._user ??= new UserBuilder();
  set user(UserBuilder user) => _$this._user = user;

  NewsBuilder _news;
  NewsBuilder get news => _$this._news ??= new NewsBuilder();
  set news(NewsBuilder news) => _$this._news = news;

  EventsBuilder _events;
  EventsBuilder get events => _$this._events ??= new EventsBuilder();
  set events(EventsBuilder events) => _$this._events = events;

  SessionsBuilder _sessions;
  SessionsBuilder get sessions => _$this._sessions ??= new SessionsBuilder();
  set sessions(SessionsBuilder sessions) => _$this._sessions = sessions;

  AppStateBuilder();

  AppStateBuilder get _$this {
    if (_$v != null) {
      _user = _$v.user?.toBuilder();
      _news = _$v.news?.toBuilder();
      _events = _$v.events?.toBuilder();
      _sessions = _$v.sessions?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AppState other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$AppState;
  }

  @override
  void update(void updates(AppStateBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$AppState build() {
    _$AppState _$result;
    try {
      _$result = _$v ??
          new _$AppState._(
              user: user.build(),
              news: news.build(),
              events: events.build(),
              sessions: sessions.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'user';
        user.build();
        _$failedField = 'news';
        news.build();
        _$failedField = 'events';
        events.build();
        _$failedField = 'sessions';
        sessions.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'AppState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
