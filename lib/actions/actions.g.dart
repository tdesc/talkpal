// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'actions.dart';

// **************************************************************************
// Generator: BuiltReduxGenerator
// **************************************************************************

class _$AppActions extends AppActions {
  factory _$AppActions() => new _$AppActions._();
  _$AppActions._() : super._();

  final ActionDispatcher<Null> loginUser =
      new ActionDispatcher<Null>('AppActions-loginUser');
  final ActionDispatcher<Null> loginFirebase =
      new ActionDispatcher<Null>('AppActions-loginFirebase');
  final ActionDispatcher<User> loginSuccess =
      new ActionDispatcher<User>('AppActions-loginSuccess');
  final ActionDispatcher<Null> logoutAction =
      new ActionDispatcher<Null>('AppActions-logoutAction');
  final ActionDispatcher<dynamic> startLoginFlow =
      new ActionDispatcher<dynamic>('AppActions-startLoginFlow');
  final ActionDispatcher<Null> startRegisterFlow =
      new ActionDispatcher<Null>('AppActions-startRegisterFlow');
  final NewsActions news = new NewsActions();
  final EventsActions events = new EventsActions();
  final SessionsActions sessions = new SessionsActions();

  @override
  void setDispatcher(Dispatcher dispatcher) {
    loginUser.setDispatcher(dispatcher);
    loginFirebase.setDispatcher(dispatcher);
    loginSuccess.setDispatcher(dispatcher);
    logoutAction.setDispatcher(dispatcher);
    startLoginFlow.setDispatcher(dispatcher);
    startRegisterFlow.setDispatcher(dispatcher);
    news.setDispatcher(dispatcher);
    events.setDispatcher(dispatcher);
    sessions.setDispatcher(dispatcher);
  }
}

class AppActionsNames {
  static final ActionName<Null> loginUser =
      new ActionName<Null>('AppActions-loginUser');
  static final ActionName<Null> loginFirebase =
      new ActionName<Null>('AppActions-loginFirebase');
  static final ActionName<User> loginSuccess =
      new ActionName<User>('AppActions-loginSuccess');
  static final ActionName<Null> logoutAction =
      new ActionName<Null>('AppActions-logoutAction');
  static final ActionName<dynamic> startLoginFlow =
      new ActionName<dynamic>('AppActions-startLoginFlow');
  static final ActionName<Null> startRegisterFlow =
      new ActionName<Null>('AppActions-startRegisterFlow');
}
