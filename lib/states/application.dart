library application;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'package:talkpal/models/user.dart';

import 'events.dart';
import 'sessions.dart';


part 'application.g.dart';

abstract class AppState implements Built<AppState, AppStateBuilder> {

  AppState._();

  factory AppState([updates(AppStateBuilder b)]) => new _$AppState((b) => b

    ..events = Events().toBuilder()
    ..sessions = Sessions().toBuilder()

    ..user = User((b)=> b
      ..loggedIn = false
      ..name = "Anonymous").toBuilder());

  static Serializer<AppState> get serializer => _$appStateSerializer;

  User get user;
  Events get events;
  Sessions get sessions;
  // StreamSubscription

  // Future loggedIn() async {
  
  // }
}

