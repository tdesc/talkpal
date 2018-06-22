import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'session.dart';

part 'event.g.dart';

abstract class Event implements Built<Event, EventBuilder> {

  String get id;
  String get name;
  
  @nullable
  String get description;
  
  @nullable
  String get location;
      
  @nullable
  String get coverUrl;

  @nullable
  DateTime get date;
 
  BuiltMap<String,Session> get sessions;
  
  static Serializer<Event> get serializer => _$eventSerializer;

  Event._();
  factory Event([updates(EventBuilder b)]) => new _$Event((b)=> b
    ..name = 'New default event name'
    ..sessions = BuiltMap<String,Session>().toBuilder()
  );  

}
