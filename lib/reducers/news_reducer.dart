import 'package:built_redux/built_redux.dart';
import 'package:built_collection/built_collection.dart';

import 'package:talkpal/models/event.dart';
import 'package:talkpal/models/session.dart';


import 'package:talkpal/states/application.dart';
import 'package:talkpal/states/news.dart';

import 'package:talkpal/models/article.dart';

NestedReducerBuilder<AppState, AppStateBuilder, News, NewsBuilder>
    createNewsReducer() =>
        new NestedReducerBuilder<AppState, AppStateBuilder, News, NewsBuilder>(
          (state) => state.news,
          (builder) => builder.news,
        )
        ..add<Article>(NewsActionsNames.update, _updateNews);


_updateNews(News state, Action<Article> action, NewsBuilder builder)
{ 
    print("news reducer ${action.payload} ${action.payload.id}");
    builder..map[action.payload.id] = action.payload;
    // builder.map.putIfAbsent(action.payload.id, () => action.payload);
}


