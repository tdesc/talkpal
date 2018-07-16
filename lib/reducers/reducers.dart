import 'package:built_redux/built_redux.dart';
import 'package:built_collection/built_collection.dart';

import 'package:talkpal/states/application.dart';

import 'package:talkpal/models/user.dart';
import 'package:talkpal/models/event.dart';
import 'package:talkpal/models/session.dart';
import 'package:talkpal/models/event_request.dart';
import 'package:talkpal/actions/actions.dart';
import 'package:talkpal/actions/userPayload.dart';

import 'package:talkpal/reducers/events_reducer.dart';
import 'package:talkpal/reducers/sessions_reducer.dart';
import 'package:talkpal/reducers/news_reducer.dart';
// import 'dart:async';

enum DialogDemoAction {
  cancel,
//  next,
//  disagree,
  agree,
}

var reducerBuilder = new ReducerBuilder<AppState, AppStateBuilder>()
  ..add(AppActionsNames.startLoginFlow,startLoginFlow)
  ..add(AppActionsNames.loginSuccess, loginSuccess)
  // ..add(AppActionsNames.addEvent, updateEvent)
  // ..add(AppActionsNames.removeEvent, removeEvent)
  ..combineNested(createEventsReducer())
  ..combineNested(createNewsReducer())
  ..combineNested(createSessionsReducer())
  ..combineMap(createEventSessionsReducer())
  ..combineMap(createParticipantsReducer());


// new NestedReducerBuilder<AppState, AppStateBuilder, Event, EventBuilder>(
//           (state) => state.items,
//           (builder) => builder.items,
//         )
//           ..add<Item>(ItemsActionsNames.update, _updateItem)
//           ..add<String>(ItemsActionsNames.remove, _removeItem)
//           ..add<String>(ItemsActionsNames.setCurrent, _setCurrentItem);

// var nestedBuilder = new ReducerBuilder<Event, EventBuilder>()
//   ..combineMap(eventsReducerBuilder);

// listReducerBuilder is a ListReducerBuilder that rebuilds the list
// when builtListAction is dispatched. This ListReducerBuilder
// could be modified to handle more actions that rebuild builtList.
// Reducers added to the ListReducerBuilder must have the signature:
// (BuiltList<int>, Action<T>, ListBuilder<int>)

// final eventsReducerBuilder = new MapReducerBuilder<AppState, AppStateBuilder, String, Event>(        
//       (state) => state.events, (builder) => builder.events) // maps from the main state object to the nested collection
      
//       ..add<Session>(AppActionsNames.addSession, addSessionReducer)
//       ..add<String>(AppActionsNames.removeSession, removeSessionReducer);

void addSessionReducer(BuiltMap<String, Event> events, Action<Session> action, MapBuilder<String, Event> builder)
{
  if( events.containsKey(action.payload.eventId) )
  {  
      builder[action.payload.eventId] = builder[action.payload.eventId].rebuild((b)=>b
        ..name = "Text updated"
        ..sessions.putIfAbsent(action.payload.id, () =>action.payload)
      );
      
      print("wtf ${builder[action.payload.eventId]}");     
  }
}

void removeSessionReducer(BuiltMap<String, Event> events, Action<String> action, MapBuilder<String, Event> builder)
{
  List<String> ids = action.payload.split("_");
  print("removeSession ${ids}");

  if( events.containsKey(ids[0]) && events[ids[0]].sessions.containsKey(ids[1]) )
  {  
      builder[ids[0]] = builder[ids[0]].rebuild((b)=>b
        ..name = "Text updated with remove"
        ..sessions.remove(ids[1])
      );      
  }
}

// void updateEvent(AppState state, Action<Event> action, AppStateBuilder builder) {
//   if( state.events.containsKey(action.payload.id) )
//   {
//     builder.events[action.payload.id] = action.payload;
//   }else
//   {
//     builder.events.putIfAbsent(action.payload.id, () => action.payload );
//   }
// }

// void removeEvent(AppState state, Action<String> action, AppStateBuilder builder) {
  
//   if( state.events.containsKey(action.payload) )
//   {
//     builder.events.remove(action.payload);
//   }
// }

void loginSuccess(AppState state, Action<User> action, AppStateBuilder builder) {
  print("we so happy!?! loginSuccess ${action.payload}");
  builder.user.replace(action.payload);
  
}

void startLoginFlow(AppState state, Action<dynamic> action, AppStateBuilder builder) {
//  print(action.toString());

}
