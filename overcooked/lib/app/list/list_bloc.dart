import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:overcooked/app/list/list_events.dart';
import 'package:overcooked/app/list/list_state.dart';

class ListBloc extends Bloc<ListEvent, ListState> {
  @override
  ListState get initialState =>
      ListState(isLoading: true, content: null);

  @override
  Stream<ListState> mapEventToState(ListEvent event) async* {
    if (event is LoadContentEvent) {
      yield ListState(isLoading: true, content: "loading...");
    }

    if (event is ContentLoadedEvent) {
      yield ListState(isLoading: false, content: "loaded!");
    }
  }
}
