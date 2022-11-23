part of 'selectedmovie_bloc.dart';

@freezed
class SelectedmovieState with _$SelectedmovieState {
  const factory SelectedmovieState.selected(Movie selectedMovie) = _Selected;
  const factory SelectedmovieState.unselected() = _Unselected;
}
