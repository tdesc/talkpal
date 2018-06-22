// Observable httpRequestEpic(Observable<Action<dynamic>> stream,
//         MiddlewareApi<Counter, CounterBuilder, CounterActions> mwApi) =>
//     stream
//         .where((a) => a.name == CounterActionsNames.fetchData)
//         .map((a) => a as Action<String>)
//         .asyncMap(
//           (action) => HttpRequest
//             .getString(action.payload)
//             .then(api.actions.onRequestResolved),
//         );