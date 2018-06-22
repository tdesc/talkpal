import 'package:built_redux/built_redux.dart';
import 'package:built_collection/built_collection.dart';

import 'package:talkpal/actions/actions.dart';
import 'package:talkpal/models/event_request.dart';
import 'package:talkpal/models/session.dart';


import 'package:talkpal/states/application.dart';
import 'package:talkpal/states/events.dart';
import 'package:talkpal/states/sessions.dart';

MiddlewareBuilder<AppState, AppStateBuilder, AppActions>
  createEventsMiddleware() => MiddlewareBuilder<AppState, AppStateBuilder, AppActions>()
    ..add(EventsActionsNames.requestEvent, _requestEvent)
    ..add(SessionsActionsNames.update, _updateSession)
    ..add(SessionsActionsNames.remove, _removeSession);

void _updateSession(MiddlewareApi<AppState, AppStateBuilder, AppActions> api, 
                    ActionHandler next, Action<Session> action) async { 
  next(action);            
  api.actions.events.updateSession(action.payload);
}

void _removeSession(MiddlewareApi<AppState, AppStateBuilder, AppActions> api, 
                    ActionHandler next, Action<Session> action) async { 
  next(action);            
  api.actions.events.removeSession(action.payload);
}

void _requestEvent(MiddlewareApi<AppState, AppStateBuilder, AppActions> api, 
                    ActionHandler next, Action<dynamic> action) async { 
  next(action);            

}

