import 'package:redux/redux.dart';
import 'package:owmflutter/store/store.dart';
import 'package:owmflutter/models/models.dart';
import 'package:built_collection/built_collection.dart';

AppState appReducer(AppState state, action) {
  return state.rebuild((b) => b
    ..entitiesState.replace(entitiesReducer(state.entitiesState, action))
    ..entryScreensState.replace(entryScreenReducer(state.entryScreensState, action))
    ..activeState.replace(mikroblogReducer("ACTIVE", state.activeState, action))
    ..newest.replace(mikroblogReducer("NEWEST", state.newest, action))
    ..hot24State.replace(mikroblogReducer("HOT24", state.hot24State, action))
    ..hot6State.replace(mikroblogReducer("HOT6", state.hot6State, action))
    ..hot12State.replace(mikroblogReducer("HOT12", state.hot12State, action)));
}
