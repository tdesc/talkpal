// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'serializers.dart';

// **************************************************************************
// Generator: BuiltValueGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line
// ignore_for_file: annotate_overrides
// ignore_for_file: avoid_annotating_with_dynamic
// ignore_for_file: avoid_returning_this
// ignore_for_file: omit_local_variable_types
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: sort_constructors_first

Serializers _$serializers = (new Serializers().toBuilder()
      ..add(Event.serializer)
      ..add(EventRequest.serializer)
      ..add(EventRequestPayload.serializer)
      ..add(Participant.serializer)
      ..add(Session.serializer)
      ..add(User.serializer)
      ..addBuilderFactory(
          const FullType(BuiltMap,
              const [const FullType(String), const FullType(Participant)]),
          () => new MapBuilder<String, Participant>())
      ..addBuilderFactory(
          const FullType(BuiltMap,
              const [const FullType(String), const FullType(Session)]),
          () => new MapBuilder<String, Session>()))
    .build();
