import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'participant.g.dart';

abstract class Participant implements Built<Participant, ParticipantBuilder> {

  String get uid;
  String get name;

  int get volume;
  @nullable
  bool get mute;
  @nullable
  bool get camera;
  @nullable
  String get channel;

  static Serializer<Participant> get serializer => _$participantSerializer;

  Participant._();
  factory Participant([updates(ParticipantBuilder b)]) = _$Participant;
 
}

abstract class ParticipantPayload implements Built<ParticipantPayload, ParticipantPayloadBuilder> {

  String get sessionId;
  
  @nullable
  Participant get participant;

  ParticipantPayload._();
  
  static Serializer<ParticipantPayload> get serializer => _$participantPayloadSerializer;

  factory ParticipantPayload([updates(ParticipantPayloadBuilder b)]) = _$ParticipantPayload;
}