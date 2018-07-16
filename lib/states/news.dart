
import 'package:built_value/built_value.dart';
import 'package:built_redux/built_redux.dart';

import 'package:built_collection/built_collection.dart';

import 'package:talkpal/models/article.dart';
part 'news.g.dart';

abstract class NewsActions extends ReduxActions {
  
  ActionDispatcher<Article> update;

  ActionDispatcher<Null> load;

  NewsActions._();
  factory NewsActions() => new _$NewsActions();
}

abstract class News implements Built<News, NewsBuilder> {
  /// [map] contains a map of Session uid to Session.
  BuiltMap<String, Article> get map;

  // Built value boilerplate
  News._();
  factory News([updates(NewsBuilder b)]) =>
      new _$News((NewsBuilder b) => b
      ..map = BuiltMap<String,Article>().toBuilder()
      );
}