part of 'newticket_bloc.dart';

@freezed
class NewticketState with _$NewticketState {
  const factory NewticketState.initial() = _Initial;
  const factory NewticketState.created(Ticket ticket) = _Created;
}
