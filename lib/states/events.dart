library events;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_redux/built_redux.dart';

import '../models/event.dart';
import '../models/event_request.dart';

import '../models/session.dart';

part 'events.g.dart';

////////////////////
/// Actions
///////////////////

/// [SessionsActions]
abstract class EventsActions extends ReduxActions {
  ActionDispatcher<Event> update;
  ActionDispatcher<String> remove;
  ActionDispatcher<String> setCurrent;

  ActionDispatcher<Session> updateSession;
  ActionDispatcher<Session> removeSession;

  ActionDispatcher<EventRequest> requestEvent;
  EventsActions._();
  factory EventsActions() => new _$EventsActions();
}

////////////////////
/// State
///////////////////

/// [Events]
abstract class Events implements Built<Events, EventsBuilder> {
  /// [map] contains a map of Session uid to Session.
  BuiltMap<String, Event> get map;

  String get currentUid;

  // Built value boilerplate
  Events._();
  factory Events([updates(EventsBuilder b)]) =>
      new _$Events((EventsBuilder b) => b
      ..map = BuiltMap<String,Event>().toBuilder()
      ..currentUid = "");

  @memoized
  Event get current => map[currentUid];
}
