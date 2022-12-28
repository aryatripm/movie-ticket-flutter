import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_ticket/entity/ticket.dart';

part 'newticket_event.dart';
part 'newticket_state.dart';
part 'newticket_bloc.freezed.dart';

class NewticketBloc extends Bloc<NewticketEvent, NewticketState> {
  NewticketBloc() : super(const _Initial()) {
    on<NewticketEvent>((event, emit) {
      emit(state.when(
        initial: () {
          return event.when(
            create: (newTicket) => NewticketState.created(newTicket),
            editId: (newId) {
              return NewticketState.created(Ticket());
            },
            editUserId: (newUserId) {
              return NewticketState.created(Ticket());
            },
            editMovieId: (newMovieId) {
              return NewticketState.created(Ticket());
            },
            editDate: (newDate) {
              return NewticketState.created(Ticket());
            },
            editLocation: (newLocation) {
              return NewticketState.created(Ticket());
            },
            editPricePerSeat: (newPricePerSeat) {
              return NewticketState.created(Ticket());
            },
            editSeats: (newSeats) {
              return NewticketState.created(Ticket());
            },
            delete: () {
              return const NewticketState.initial();
            },
          );
        },
        created: (ticket) {
          return event.when(
            create: (newTicket) => NewticketState.created(newTicket),
            editId: (newId) {
              ticket.id = newId;
              return NewticketState.created(ticket);
            },
            editUserId: (newUserId) {
              ticket.user_id = newUserId;
              return NewticketState.created(ticket);
            },
            editMovieId: (newMovieId) {
              ticket.movie_id = newMovieId;
              return NewticketState.created(ticket);
            },
            editDate: (newDate) {
              ticket.date = newDate;
              return NewticketState.created(ticket);
            },
            editLocation: (newLocation) {
              ticket.location = newLocation;
              return NewticketState.created(ticket);
            },
            editPricePerSeat: (newPricePerSeat) {
              ticket.price_per_seat = newPricePerSeat;
              return NewticketState.created(ticket);
            },
            editSeats: (newSeats) {
              ticket.seats = newSeats;
              return NewticketState.created(ticket);
            },
            delete: () {
              return const NewticketState.initial();
            },
          );
        },
      ));
    });
  }
}
