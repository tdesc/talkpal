library sessions;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_redux/built_redux.dart';

import '../models/session.dart';
import '../models/participant.dart';

part 'sessions.g.dart';

////////////////////
/// Actions
///////////////////

/// [SessionsActions]
abstract class SessionsActions extends ReduxActions {
  ActionDispatcher<Session> update;
  ActionDispatcher<Session> remove;
  ActionDispatcher<String> setCurrent;

  ActionDispatcher<ParticipantPayload> updateParticipant;
  ActionDispatcher<ParticipantPayload> removeParticipant;

  SessionsActions._();
  factory SessionsActions() => new _$SessionsActions();
}

////////////////////
/// State
///////////////////

/// [Sessions]
abstract class Sessions implements Built<Sessions, SessionsBuilder> {
  /// [map] contains a map of Session uid to Session.
  BuiltMap<String, Session> get map;

  String get currentUid;

  // Built value boilerplate
  Sessions._();
  factory Sessions([updates(SessionsBuilder b)]) =>
      new _$Sessions((SessionsBuilder b) => b
      ..map = BuiltMap<String,Session>().toBuilder()
      ..currentUid = "");

  @memoized
  Session get current => map[currentUid];
}

////////////////////
/// Main Reducer
///////////////////
