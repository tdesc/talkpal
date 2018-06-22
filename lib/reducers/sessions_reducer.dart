import 'package:built_redux/built_redux.dart';
import 'package:built_collection/built_collection.dart';

import 'package:talkpal/models/participant.dart';
import 'package:talkpal/models/session.dart';

import 'package:talkpal/states/application.dart';
import 'package:talkpal/states/sessions.dart';

import 'utils.dart';

NestedReducerBuilder<AppState, AppStateBuilder, Sessions, SessionsBuilder>
    createSessionsReducer() =>
        new NestedReducerBuilder<AppState, AppStateBuilder, Sessions, SessionsBuilder>(
          (state) => state.sessions,
          (builder) => builder.sessions,
        )
        ..add<Session>(SessionsActionsNames.update, _updateSession)
        ..add<Session>(SessionsActionsNames.remove, _removeSession)
        ..add<String>(SessionsActionsNames.setCurrent, _setCurrentSession);

////////////////////
/// Reducers
///////////////////

_updateSession(Sessions state, Action<Session> action, SessionsBuilder builder)
{
    print("session _updateSession");
    builder..map[action.payload.id] = action.payload;
}

_removeSession(
        Sessions state, Action<Session> action, SessionsBuilder builder) =>
    builder..map.remove(action.payload);

_setCurrentSession(
        Sessions state, Action<String> action, SessionsBuilder builder) =>
    builder..currentUid = action.payload;
       
MapReducerBuilder<AppState, AppStateBuilder, String, Session>
    createParticipantsReducer() => new MapReducerBuilder<AppState, AppStateBuilder, String, Session>(        
      (state) => state.sessions.map, (builder) => builder.sessions.map) // maps from the main state object to the nested collection      
      ..add<ParticipantPayload>(SessionsActionsNames.updateParticipant, _addParticipant)
      ..add<ParticipantPayload>(SessionsActionsNames.removeParticipant, _removeParticipant);

void _addParticipant(BuiltMap<String, Session> sessions, Action<ParticipantPayload> action, MapBuilder<String, Session> builder)
{
  String sessionId = action.payload.sessionId;
  String uid = action.payload.participant.uid;

  if( sessions.containsKey(sessionId) )
  {  
      builder[sessionId] = builder[sessionId].rebuild((b)=>b
        ..participants.putIfAbsent(uid, () =>action.payload.participant)
      );      
  }
}

void _removeParticipant(BuiltMap<String, Session> sessions, Action<ParticipantPayload> action, MapBuilder<String, Session> builder)
{
  String sessionId = action.payload.sessionId;
  String uid = action.payload.participant.uid;

  if( containsKey(sessions, sessionId, (Session session) => session.participants, uid) )
  {  
      builder[sessionId] = builder[sessionId].rebuild((b)=>b
        ..participants.remove(uid)
      );      
  }
}


