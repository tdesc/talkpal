
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_collection/built_collection.dart';

import 'package:talkpal/models/event.dart';
import 'package:talkpal/models/user.dart';
import 'package:talkpal/models/session.dart';
import 'package:talkpal/models/participant.dart';
import 'package:talkpal/models/event_request.dart';

part 'serializers.g.dart';

@SerializersFor(const [ Event, User, EventRequest, EventRequestPayload, Session, Participant]) final Serializers serializers = (
    _$serializers.toBuilder()..addPlugin(new StandardJsonPlugin())).build();

