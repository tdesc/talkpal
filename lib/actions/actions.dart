
import '../models/user.dart';
import '../states/events.dart';
import '../states/sessions.dart';

import 'package:built_redux/built_redux.dart';

part 'actions.g.dart';

abstract class AppActions extends ReduxActions {

  AppActions._();
  factory AppActions() => new _$AppActions();

  EventsActions get events;

  SessionsActions get sessions;

  ActionDispatcher<Null> get loginUser;

  ActionDispatcher<Null> get loginFirebase;
  ActionDispatcher<User> get loginSuccess;
  
  ActionDispatcher<Null> get logoutAction;

  ActionDispatcher<dynamic> get startLoginFlow;
  ActionDispatcher<Null> get startRegisterFlow;



}


