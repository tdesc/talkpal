import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';

import 'participant.dart';

part 'session.g.dart';

abstract class Session implements Built<Session, SessionBuilder> {

  String get id;
  String get eventId;
  
  @nullable
  String get title;

  static Serializer<Session> get serializer => _$sessionSerializer;

  Session._();
  factory Session([updates(SessionBuilder b)]) = _$Session;
 
  @nullable 
  BuiltMap<String,Participant> get participants;
}
