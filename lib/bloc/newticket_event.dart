part of 'newticket_bloc.dart';

@freezed
class NewticketEvent with _$NewticketEvent {
  const factory NewticketEvent.create(Ticket newTicket) = _Create;
  const factory NewticketEvent.editId(String newId) = _EditId;
  const factory NewticketEvent.editUserId(String newUserId) = _EditUserId;
  const factory NewticketEvent.editMovieId(String newMovieId) = _EditMovieId;
  const factory NewticketEvent.editDate(Timestamp newDate) = _EditDate;
  const factory NewticketEvent.editLocation(String newLocation) = _EditLocation;
  const factory NewticketEvent.editPricePerSeat(int newPricePerSeat) =
      _EditPricePerSeat;
  const factory NewticketEvent.editSeats(List<String> newSeats) = _EditSeats;
}
