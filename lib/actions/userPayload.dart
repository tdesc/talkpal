
import 'package:built_value/built_value.dart';
import 'package:talkpal/models/user.dart';

part 'userPayload.g.dart';


abstract class UserPayload implements Built<UserPayload, UserPayloadBuilder> {

  UserPayload._();

  factory UserPayload([updates(UserPayloadBuilder b)]) => new _$UserPayload((b) => b
    ..tag = 'Test'
  );

  @nullable
  User get user;

  @nullable
  String get tag;
}