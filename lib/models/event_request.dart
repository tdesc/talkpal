
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'event_request.g.dart';

abstract class EventRequestPayload implements Built<EventRequestPayload, EventRequestPayloadBuilder> {

  String get title;

  EventRequestPayload._();
  
  static Serializer<EventRequestPayload> get serializer => _$eventRequestPayloadSerializer;

  factory EventRequestPayload([updates(EventRequestPayloadBuilder b)]) = _$EventRequestPayload;
}

abstract class EventRequest implements Built<EventRequest, EventRequestBuilder> {

  String get uid;
  String get type;
  EventRequestPayload get payload;
  
  static Serializer<EventRequest> get serializer => _$eventRequestSerializer;

  EventRequest._();
  factory EventRequest([updates(EventRequestBuilder b)]) = _$EventRequest;
}

