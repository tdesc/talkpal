import 'package:built_redux/built_redux.dart';
import 'package:built_collection/built_collection.dart';

import 'package:talkpal/models/event.dart';
import 'package:talkpal/models/session.dart';


import 'package:talkpal/states/application.dart';
import 'package:talkpal/states/events.dart';
import 'package:talkpal/states/sessions.dart';

import 'utils.dart';

NestedReducerBuilder<AppState, AppStateBuilder, Events, EventsBuilder>
    createEventsReducer() =>
        new NestedReducerBuilder<AppState, AppStateBuilder, Events, EventsBuilder>(
          (state) => state.events,
          (builder) => builder.events,
        )
        ..add<Event>(EventsActionsNames.update, _updateEvent)
        ..add<String>(EventsActionsNames.remove, _removeEvent)
        ..add<String>(EventsActionsNames.setCurrent, _setCurrentEvent);

////////////////////
/// Reducers
///////////////////

_updateEvent(
        Events state, Action<Event> action, EventsBuilder builder) =>
    builder..map[action.payload.id] = action.payload;

_removeEvent(
        Events state, Action<String> action, EventsBuilder builder) =>
    builder..map.remove(action.payload);

_setCurrentEvent(
        Events state, Action<String> action, EventsBuilder builder) =>
    builder..currentUid = action.payload;

MapReducerBuilder<AppState, AppStateBuilder, String, Event>
    createEventSessionsReducer() => new MapReducerBuilder<AppState, AppStateBuilder, String, Event>(        
      (state) => state.events.map, (builder) => builder.events.map) // maps from the main state object to the nested collection
        
      ..add<Session>(EventsActionsNames.updateSession, _updateSession)
      ..add<Session>(EventsActionsNames.removeSession, _removeSession);

void _updateSession(BuiltMap<String, Event> events, Action<Session> action, MapBuilder<String, Event> builder)
{
  String eventId = action.payload.eventId;
  String sessionId = action.payload.id;
  print("events _updateSession");
  if( events.containsKey(eventId) )
  {  
      builder[eventId] = builder[eventId].rebuild((b)=>b
        ..sessions.putIfAbsent(sessionId, () =>action.payload)
      );      
  }
}

_removeSession(BuiltMap<String, Event> events, Action<Session> action, MapBuilder<String, Event> builder)
{
  String eventId = action.payload.eventId;
  String sessionId = action.payload.id;

  if( containsKey(events, eventId, (Event event) => event.sessions, sessionId) )
  {  
      builder[eventId] = builder[eventId].rebuild((b)=>b
        ..sessions.remove(sessionId)
      );      
  }

}