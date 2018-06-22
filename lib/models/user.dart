library user;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user.g.dart';

abstract class User  implements Built<User, UserBuilder> {

  @nullable
  String get uid;

  bool get loggedIn;

  @nullable
  String get name;
  
  @nullable
  String get photoUrl;

  User._();
  factory User([updates(UserBuilder b)]) => new _$User((b) => b
    ..loggedIn = false
  );

  static Serializer<User> get serializer => _$userSerializer;


}

