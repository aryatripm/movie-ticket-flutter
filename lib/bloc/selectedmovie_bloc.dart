import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_ticket/entity/movie.dart';

part 'selectedmovie_event.dart';
part 'selectedmovie_state.dart';
part 'selectedmovie_bloc.freezed.dart';

class SelectedmovieBloc extends Bloc<SelectedmovieEvent, SelectedmovieState> {
  SelectedmovieBloc() : super(const _Unselected()) {
    on<SelectedmovieEvent>((event, emit) {
      emit(state.when(
        selected: (selectedMovie) {
          return event.when(
            select: (movie) => SelectedmovieState.selected(movie),
            unselect: () => const SelectedmovieState.unselected(),
          );
        },
        unselected: () {
          return event.when(
            select: (movie) => SelectedmovieState.selected(movie),
            unselect: () => const SelectedmovieState.unselected(),
          );
        },
      ));
    });
  }
}
