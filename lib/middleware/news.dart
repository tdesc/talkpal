import 'dart:convert';
import 'package:built_redux/built_redux.dart';
import 'package:built_collection/built_collection.dart';

export 'package:talkpal/models/serializers.dart';

import 'package:talkpal/actions/actions.dart';
import 'package:talkpal/models/article.dart';
import 'package:http/http.dart' as http;

import 'package:talkpal/states/application.dart';
import 'package:talkpal/states/news.dart';

MiddlewareBuilder<AppState, AppStateBuilder, AppActions>
  createNewsMiddleware() => MiddlewareBuilder<AppState, AppStateBuilder, AppActions>()
    ..add(NewsActionsNames.load, _loadArticles);


void _loadArticles(MiddlewareApi<AppState, AppStateBuilder, AppActions> api, 
                    ActionHandler next, Action<Null> action) async { 
  next(action);            
  print("_loadArticles $action");  
  
  var response = await http.get("https://hacker-news.firebaseio.com/v0/topstories.json?print=pretty");
  
  List<dynamic> ids = JSON.decode(response.body);
  ids.forEach((id){

     http.get("https://hacker-news.firebaseio.com/v0/item/$id.json?print=pretty").then((result){
      //  print(result.body);
      
        final Map<String, dynamic> data = JSON.decode(result.body);    
        print(data);

        Article article = Article((b)=>b
          ..id = data['id'].toString() ?? "123456"
          ..text = data['text']
          ..title = data['title']
        );

        print("before sending: ${article.id} ${article}");
        api.actions.news.update(article);

     });
  });


  // 
}


