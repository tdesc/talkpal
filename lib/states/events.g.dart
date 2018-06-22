// GENERATED CODE - DO NOT MODIFY BY HAND

part of events;

// **************************************************************************
// Generator: BuiltReduxGenerator
// **************************************************************************

class _$EventsActions extends EventsActions {
  factory _$EventsActions() => new _$EventsActions._();
  _$EventsActions._() : super._();

  final ActionDispatcher<Event> update =
      new ActionDispatcher<Event>('EventsActions-update');
  final ActionDispatcher<String> remove =
      new ActionDispatcher<String>('EventsActions-remove');
  final ActionDispatcher<String> setCurrent =
      new ActionDispatcher<String>('EventsActions-setCurrent');
  final ActionDispatcher<Session> updateSession =
      new ActionDispatcher<Session>('EventsActions-updateSession');
  final ActionDispatcher<Session> removeSession =
      new ActionDispatcher<Session>('EventsActions-removeSession');
  final ActionDispatcher<EventRequest> requestEvent =
      new ActionDispatcher<EventRequest>('EventsActions-requestEvent');

  @override
  void setDispatcher(Dispatcher dispatcher) {
    update.setDispatcher(dispatcher);
    remove.setDispatcher(dispatcher);
    setCurrent.setDispatcher(dispatcher);
    updateSession.setDispatcher(dispatcher);
    removeSession.setDispatcher(dispatcher);
    requestEvent.setDispatcher(dispatcher);
  }
}

class EventsActionsNames {
  static final ActionName<Event> update =
      new ActionName<Event>('EventsActions-update');
  static final ActionName<String> remove =
      new ActionName<String>('EventsActions-remove');
  static final ActionName<String> setCurrent =
      new ActionName<String>('EventsActions-setCurrent');
  static final ActionName<Session> updateSession =
      new ActionName<Session>('EventsActions-updateSession');
  static final ActionName<Session> removeSession =
      new ActionName<Session>('EventsActions-removeSession');
  static final ActionName<EventRequest> requestEvent =
      new ActionName<EventRequest>('EventsActions-requestEvent');
}

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

class _$Events extends Events {
  @override
  final BuiltMap<String, Event> map;
  @override
  final String currentUid;
  Event __current;

  factory _$Events([void updates(EventsBuilder b)]) =>
      (new EventsBuilder()..update(updates)).build();

  _$Events._({this.map, this.currentUid}) : super._() {
    if (map == null) throw new BuiltValueNullFieldError('Events', 'map');
    if (currentUid == null)
      throw new BuiltValueNullFieldError('Events', 'currentUid');
  }

  @override
  Event get current => __current ??= super.current;

  @override
  Events rebuild(void updates(EventsBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  EventsBuilder toBuilder() => new EventsBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! Events) return false;
    return map == other.map && currentUid == other.currentUid;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, map.hashCode), currentUid.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Events')
          ..add('map', map)
          ..add('currentUid', currentUid))
        .toString();
  }
}

class EventsBuilder implements Builder<Events, EventsBuilder> {
  _$Events _$v;

  MapBuilder<String, Event> _map;
  MapBuilder<String, Event> get map =>
      _$this._map ??= new MapBuilder<String, Event>();
  set map(MapBuilder<String, Event> map) => _$this._map = map;

  String _currentUid;
  String get currentUid => _$this._currentUid;
  set currentUid(String currentUid) => _$this._currentUid = currentUid;

  EventsBuilder();

  EventsBuilder get _$this {
    if (_$v != null) {
      _map = _$v.map?.toBuilder();
      _currentUid = _$v.currentUid;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Events other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$Events;
  }

  @override
  void update(void updates(EventsBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Events build() {
    _$Events _$result;
    try {
      _$result =
          _$v ?? new _$Events._(map: map.build(), currentUid: currentUid);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'map';
        map.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Events', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
