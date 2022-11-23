part of 'selectedmovie_bloc.dart';

@freezed
class SelectedmovieEvent with _$SelectedmovieEvent {
  const factory SelectedmovieEvent.select(Movie movie) = _Select;
  const factory SelectedmovieEvent.unselect() = _Unselect;
}
