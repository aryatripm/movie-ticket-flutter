// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'newticket_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NewticketEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Ticket newTicket) create,
    required TResult Function(String newId) editId,
    required TResult Function(String newUserId) editUserId,
    required TResult Function(String newMovieId) editMovieId,
    required TResult Function(Timestamp newDate) editDate,
    required TResult Function(String newLocation) editLocation,
    required TResult Function(int newPricePerSeat) editPricePerSeat,
    required TResult Function(List<String> newSeats) editSeats,
    required TResult Function() delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Ticket newTicket)? create,
    TResult? Function(String newId)? editId,
    TResult? Function(String newUserId)? editUserId,
    TResult? Function(String newMovieId)? editMovieId,
    TResult? Function(Timestamp newDate)? editDate,
    TResult? Function(String newLocation)? editLocation,
    TResult? Function(int newPricePerSeat)? editPricePerSeat,
    TResult? Function(List<String> newSeats)? editSeats,
    TResult? Function()? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Ticket newTicket)? create,
    TResult Function(String newId)? editId,
    TResult Function(String newUserId)? editUserId,
    TResult Function(String newMovieId)? editMovieId,
    TResult Function(Timestamp newDate)? editDate,
    TResult Function(String newLocation)? editLocation,
    TResult Function(int newPricePerSeat)? editPricePerSeat,
    TResult Function(List<String> newSeats)? editSeats,
    TResult Function()? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Create value) create,
    required TResult Function(_EditId value) editId,
    required TResult Function(_EditUserId value) editUserId,
    required TResult Function(_EditMovieId value) editMovieId,
    required TResult Function(_EditDate value) editDate,
    required TResult Function(_EditLocation value) editLocation,
    required TResult Function(_EditPricePerSeat value) editPricePerSeat,
    required TResult Function(_EditSeats value) editSeats,
    required TResult Function(_Delete value) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Create value)? create,
    TResult? Function(_EditId value)? editId,
    TResult? Function(_EditUserId value)? editUserId,
    TResult? Function(_EditMovieId value)? editMovieId,
    TResult? Function(_EditDate value)? editDate,
    TResult? Function(_EditLocation value)? editLocation,
    TResult? Function(_EditPricePerSeat value)? editPricePerSeat,
    TResult? Function(_EditSeats value)? editSeats,
    TResult? Function(_Delete value)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Create value)? create,
    TResult Function(_EditId value)? editId,
    TResult Function(_EditUserId value)? editUserId,
    TResult Function(_EditMovieId value)? editMovieId,
    TResult Function(_EditDate value)? editDate,
    TResult Function(_EditLocation value)? editLocation,
    TResult Function(_EditPricePerSeat value)? editPricePerSeat,
    TResult Function(_EditSeats value)? editSeats,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewticketEventCopyWith<$Res> {
  factory $NewticketEventCopyWith(
          NewticketEvent value, $Res Function(NewticketEvent) then) =
      _$NewticketEventCopyWithImpl<$Res, NewticketEvent>;
}

/// @nodoc
class _$NewticketEventCopyWithImpl<$Res, $Val extends NewticketEvent>
    implements $NewticketEventCopyWith<$Res> {
  _$NewticketEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_CreateCopyWith<$Res> {
  factory _$$_CreateCopyWith(_$_Create value, $Res Function(_$_Create) then) =
      __$$_CreateCopyWithImpl<$Res>;
  @useResult
  $Res call({Ticket newTicket});
}

/// @nodoc
class __$$_CreateCopyWithImpl<$Res>
    extends _$NewticketEventCopyWithImpl<$Res, _$_Create>
    implements _$$_CreateCopyWith<$Res> {
  __$$_CreateCopyWithImpl(_$_Create _value, $Res Function(_$_Create) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newTicket = null,
  }) {
    return _then(_$_Create(
      null == newTicket
          ? _value.newTicket
          : newTicket // ignore: cast_nullable_to_non_nullable
              as Ticket,
    ));
  }
}

/// @nodoc

class _$_Create implements _Create {
  const _$_Create(this.newTicket);

  @override
  final Ticket newTicket;

  @override
  String toString() {
    return 'NewticketEvent.create(newTicket: $newTicket)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Create &&
            (identical(other.newTicket, newTicket) ||
                other.newTicket == newTicket));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newTicket);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateCopyWith<_$_Create> get copyWith =>
      __$$_CreateCopyWithImpl<_$_Create>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Ticket newTicket) create,
    required TResult Function(String newId) editId,
    required TResult Function(String newUserId) editUserId,
    required TResult Function(String newMovieId) editMovieId,
    required TResult Function(Timestamp newDate) editDate,
    required TResult Function(String newLocation) editLocation,
    required TResult Function(int newPricePerSeat) editPricePerSeat,
    required TResult Function(List<String> newSeats) editSeats,
    required TResult Function() delete,
  }) {
    return create(newTicket);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Ticket newTicket)? create,
    TResult? Function(String newId)? editId,
    TResult? Function(String newUserId)? editUserId,
    TResult? Function(String newMovieId)? editMovieId,
    TResult? Function(Timestamp newDate)? editDate,
    TResult? Function(String newLocation)? editLocation,
    TResult? Function(int newPricePerSeat)? editPricePerSeat,
    TResult? Function(List<String> newSeats)? editSeats,
    TResult? Function()? delete,
  }) {
    return create?.call(newTicket);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Ticket newTicket)? create,
    TResult Function(String newId)? editId,
    TResult Function(String newUserId)? editUserId,
    TResult Function(String newMovieId)? editMovieId,
    TResult Function(Timestamp newDate)? editDate,
    TResult Function(String newLocation)? editLocation,
    TResult Function(int newPricePerSeat)? editPricePerSeat,
    TResult Function(List<String> newSeats)? editSeats,
    TResult Function()? delete,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(newTicket);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Create value) create,
    required TResult Function(_EditId value) editId,
    required TResult Function(_EditUserId value) editUserId,
    required TResult Function(_EditMovieId value) editMovieId,
    required TResult Function(_EditDate value) editDate,
    required TResult Function(_EditLocation value) editLocation,
    required TResult Function(_EditPricePerSeat value) editPricePerSeat,
    required TResult Function(_EditSeats value) editSeats,
    required TResult Function(_Delete value) delete,
  }) {
    return create(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Create value)? create,
    TResult? Function(_EditId value)? editId,
    TResult? Function(_EditUserId value)? editUserId,
    TResult? Function(_EditMovieId value)? editMovieId,
    TResult? Function(_EditDate value)? editDate,
    TResult? Function(_EditLocation value)? editLocation,
    TResult? Function(_EditPricePerSeat value)? editPricePerSeat,
    TResult? Function(_EditSeats value)? editSeats,
    TResult? Function(_Delete value)? delete,
  }) {
    return create?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Create value)? create,
    TResult Function(_EditId value)? editId,
    TResult Function(_EditUserId value)? editUserId,
    TResult Function(_EditMovieId value)? editMovieId,
    TResult Function(_EditDate value)? editDate,
    TResult Function(_EditLocation value)? editLocation,
    TResult Function(_EditPricePerSeat value)? editPricePerSeat,
    TResult Function(_EditSeats value)? editSeats,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(this);
    }
    return orElse();
  }
}

abstract class _Create implements NewticketEvent {
  const factory _Create(final Ticket newTicket) = _$_Create;

  Ticket get newTicket;
  @JsonKey(ignore: true)
  _$$_CreateCopyWith<_$_Create> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EditIdCopyWith<$Res> {
  factory _$$_EditIdCopyWith(_$_EditId value, $Res Function(_$_EditId) then) =
      __$$_EditIdCopyWithImpl<$Res>;
  @useResult
  $Res call({String newId});
}

/// @nodoc
class __$$_EditIdCopyWithImpl<$Res>
    extends _$NewticketEventCopyWithImpl<$Res, _$_EditId>
    implements _$$_EditIdCopyWith<$Res> {
  __$$_EditIdCopyWithImpl(_$_EditId _value, $Res Function(_$_EditId) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newId = null,
  }) {
    return _then(_$_EditId(
      null == newId
          ? _value.newId
          : newId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EditId implements _EditId {
  const _$_EditId(this.newId);

  @override
  final String newId;

  @override
  String toString() {
    return 'NewticketEvent.editId(newId: $newId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EditId &&
            (identical(other.newId, newId) || other.newId == newId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EditIdCopyWith<_$_EditId> get copyWith =>
      __$$_EditIdCopyWithImpl<_$_EditId>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Ticket newTicket) create,
    required TResult Function(String newId) editId,
    required TResult Function(String newUserId) editUserId,
    required TResult Function(String newMovieId) editMovieId,
    required TResult Function(Timestamp newDate) editDate,
    required TResult Function(String newLocation) editLocation,
    required TResult Function(int newPricePerSeat) editPricePerSeat,
    required TResult Function(List<String> newSeats) editSeats,
    required TResult Function() delete,
  }) {
    return editId(newId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Ticket newTicket)? create,
    TResult? Function(String newId)? editId,
    TResult? Function(String newUserId)? editUserId,
    TResult? Function(String newMovieId)? editMovieId,
    TResult? Function(Timestamp newDate)? editDate,
    TResult? Function(String newLocation)? editLocation,
    TResult? Function(int newPricePerSeat)? editPricePerSeat,
    TResult? Function(List<String> newSeats)? editSeats,
    TResult? Function()? delete,
  }) {
    return editId?.call(newId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Ticket newTicket)? create,
    TResult Function(String newId)? editId,
    TResult Function(String newUserId)? editUserId,
    TResult Function(String newMovieId)? editMovieId,
    TResult Function(Timestamp newDate)? editDate,
    TResult Function(String newLocation)? editLocation,
    TResult Function(int newPricePerSeat)? editPricePerSeat,
    TResult Function(List<String> newSeats)? editSeats,
    TResult Function()? delete,
    required TResult orElse(),
  }) {
    if (editId != null) {
      return editId(newId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Create value) create,
    required TResult Function(_EditId value) editId,
    required TResult Function(_EditUserId value) editUserId,
    required TResult Function(_EditMovieId value) editMovieId,
    required TResult Function(_EditDate value) editDate,
    required TResult Function(_EditLocation value) editLocation,
    required TResult Function(_EditPricePerSeat value) editPricePerSeat,
    required TResult Function(_EditSeats value) editSeats,
    required TResult Function(_Delete value) delete,
  }) {
    return editId(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Create value)? create,
    TResult? Function(_EditId value)? editId,
    TResult? Function(_EditUserId value)? editUserId,
    TResult? Function(_EditMovieId value)? editMovieId,
    TResult? Function(_EditDate value)? editDate,
    TResult? Function(_EditLocation value)? editLocation,
    TResult? Function(_EditPricePerSeat value)? editPricePerSeat,
    TResult? Function(_EditSeats value)? editSeats,
    TResult? Function(_Delete value)? delete,
  }) {
    return editId?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Create value)? create,
    TResult Function(_EditId value)? editId,
    TResult Function(_EditUserId value)? editUserId,
    TResult Function(_EditMovieId value)? editMovieId,
    TResult Function(_EditDate value)? editDate,
    TResult Function(_EditLocation value)? editLocation,
    TResult Function(_EditPricePerSeat value)? editPricePerSeat,
    TResult Function(_EditSeats value)? editSeats,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (editId != null) {
      return editId(this);
    }
    return orElse();
  }
}

abstract class _EditId implements NewticketEvent {
  const factory _EditId(final String newId) = _$_EditId;

  String get newId;
  @JsonKey(ignore: true)
  _$$_EditIdCopyWith<_$_EditId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EditUserIdCopyWith<$Res> {
  factory _$$_EditUserIdCopyWith(
          _$_EditUserId value, $Res Function(_$_EditUserId) then) =
      __$$_EditUserIdCopyWithImpl<$Res>;
  @useResult
  $Res call({String newUserId});
}

/// @nodoc
class __$$_EditUserIdCopyWithImpl<$Res>
    extends _$NewticketEventCopyWithImpl<$Res, _$_EditUserId>
    implements _$$_EditUserIdCopyWith<$Res> {
  __$$_EditUserIdCopyWithImpl(
      _$_EditUserId _value, $Res Function(_$_EditUserId) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newUserId = null,
  }) {
    return _then(_$_EditUserId(
      null == newUserId
          ? _value.newUserId
          : newUserId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EditUserId implements _EditUserId {
  const _$_EditUserId(this.newUserId);

  @override
  final String newUserId;

  @override
  String toString() {
    return 'NewticketEvent.editUserId(newUserId: $newUserId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EditUserId &&
            (identical(other.newUserId, newUserId) ||
                other.newUserId == newUserId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newUserId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EditUserIdCopyWith<_$_EditUserId> get copyWith =>
      __$$_EditUserIdCopyWithImpl<_$_EditUserId>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Ticket newTicket) create,
    required TResult Function(String newId) editId,
    required TResult Function(String newUserId) editUserId,
    required TResult Function(String newMovieId) editMovieId,
    required TResult Function(Timestamp newDate) editDate,
    required TResult Function(String newLocation) editLocation,
    required TResult Function(int newPricePerSeat) editPricePerSeat,
    required TResult Function(List<String> newSeats) editSeats,
    required TResult Function() delete,
  }) {
    return editUserId(newUserId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Ticket newTicket)? create,
    TResult? Function(String newId)? editId,
    TResult? Function(String newUserId)? editUserId,
    TResult? Function(String newMovieId)? editMovieId,
    TResult? Function(Timestamp newDate)? editDate,
    TResult? Function(String newLocation)? editLocation,
    TResult? Function(int newPricePerSeat)? editPricePerSeat,
    TResult? Function(List<String> newSeats)? editSeats,
    TResult? Function()? delete,
  }) {
    return editUserId?.call(newUserId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Ticket newTicket)? create,
    TResult Function(String newId)? editId,
    TResult Function(String newUserId)? editUserId,
    TResult Function(String newMovieId)? editMovieId,
    TResult Function(Timestamp newDate)? editDate,
    TResult Function(String newLocation)? editLocation,
    TResult Function(int newPricePerSeat)? editPricePerSeat,
    TResult Function(List<String> newSeats)? editSeats,
    TResult Function()? delete,
    required TResult orElse(),
  }) {
    if (editUserId != null) {
      return editUserId(newUserId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Create value) create,
    required TResult Function(_EditId value) editId,
    required TResult Function(_EditUserId value) editUserId,
    required TResult Function(_EditMovieId value) editMovieId,
    required TResult Function(_EditDate value) editDate,
    required TResult Function(_EditLocation value) editLocation,
    required TResult Function(_EditPricePerSeat value) editPricePerSeat,
    required TResult Function(_EditSeats value) editSeats,
    required TResult Function(_Delete value) delete,
  }) {
    return editUserId(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Create value)? create,
    TResult? Function(_EditId value)? editId,
    TResult? Function(_EditUserId value)? editUserId,
    TResult? Function(_EditMovieId value)? editMovieId,
    TResult? Function(_EditDate value)? editDate,
    TResult? Function(_EditLocation value)? editLocation,
    TResult? Function(_EditPricePerSeat value)? editPricePerSeat,
    TResult? Function(_EditSeats value)? editSeats,
    TResult? Function(_Delete value)? delete,
  }) {
    return editUserId?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Create value)? create,
    TResult Function(_EditId value)? editId,
    TResult Function(_EditUserId value)? editUserId,
    TResult Function(_EditMovieId value)? editMovieId,
    TResult Function(_EditDate value)? editDate,
    TResult Function(_EditLocation value)? editLocation,
    TResult Function(_EditPricePerSeat value)? editPricePerSeat,
    TResult Function(_EditSeats value)? editSeats,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (editUserId != null) {
      return editUserId(this);
    }
    return orElse();
  }
}

abstract class _EditUserId implements NewticketEvent {
  const factory _EditUserId(final String newUserId) = _$_EditUserId;

  String get newUserId;
  @JsonKey(ignore: true)
  _$$_EditUserIdCopyWith<_$_EditUserId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EditMovieIdCopyWith<$Res> {
  factory _$$_EditMovieIdCopyWith(
          _$_EditMovieId value, $Res Function(_$_EditMovieId) then) =
      __$$_EditMovieIdCopyWithImpl<$Res>;
  @useResult
  $Res call({String newMovieId});
}

/// @nodoc
class __$$_EditMovieIdCopyWithImpl<$Res>
    extends _$NewticketEventCopyWithImpl<$Res, _$_EditMovieId>
    implements _$$_EditMovieIdCopyWith<$Res> {
  __$$_EditMovieIdCopyWithImpl(
      _$_EditMovieId _value, $Res Function(_$_EditMovieId) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newMovieId = null,
  }) {
    return _then(_$_EditMovieId(
      null == newMovieId
          ? _value.newMovieId
          : newMovieId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EditMovieId implements _EditMovieId {
  const _$_EditMovieId(this.newMovieId);

  @override
  final String newMovieId;

  @override
  String toString() {
    return 'NewticketEvent.editMovieId(newMovieId: $newMovieId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EditMovieId &&
            (identical(other.newMovieId, newMovieId) ||
                other.newMovieId == newMovieId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newMovieId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EditMovieIdCopyWith<_$_EditMovieId> get copyWith =>
      __$$_EditMovieIdCopyWithImpl<_$_EditMovieId>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Ticket newTicket) create,
    required TResult Function(String newId) editId,
    required TResult Function(String newUserId) editUserId,
    required TResult Function(String newMovieId) editMovieId,
    required TResult Function(Timestamp newDate) editDate,
    required TResult Function(String newLocation) editLocation,
    required TResult Function(int newPricePerSeat) editPricePerSeat,
    required TResult Function(List<String> newSeats) editSeats,
    required TResult Function() delete,
  }) {
    return editMovieId(newMovieId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Ticket newTicket)? create,
    TResult? Function(String newId)? editId,
    TResult? Function(String newUserId)? editUserId,
    TResult? Function(String newMovieId)? editMovieId,
    TResult? Function(Timestamp newDate)? editDate,
    TResult? Function(String newLocation)? editLocation,
    TResult? Function(int newPricePerSeat)? editPricePerSeat,
    TResult? Function(List<String> newSeats)? editSeats,
    TResult? Function()? delete,
  }) {
    return editMovieId?.call(newMovieId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Ticket newTicket)? create,
    TResult Function(String newId)? editId,
    TResult Function(String newUserId)? editUserId,
    TResult Function(String newMovieId)? editMovieId,
    TResult Function(Timestamp newDate)? editDate,
    TResult Function(String newLocation)? editLocation,
    TResult Function(int newPricePerSeat)? editPricePerSeat,
    TResult Function(List<String> newSeats)? editSeats,
    TResult Function()? delete,
    required TResult orElse(),
  }) {
    if (editMovieId != null) {
      return editMovieId(newMovieId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Create value) create,
    required TResult Function(_EditId value) editId,
    required TResult Function(_EditUserId value) editUserId,
    required TResult Function(_EditMovieId value) editMovieId,
    required TResult Function(_EditDate value) editDate,
    required TResult Function(_EditLocation value) editLocation,
    required TResult Function(_EditPricePerSeat value) editPricePerSeat,
    required TResult Function(_EditSeats value) editSeats,
    required TResult Function(_Delete value) delete,
  }) {
    return editMovieId(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Create value)? create,
    TResult? Function(_EditId value)? editId,
    TResult? Function(_EditUserId value)? editUserId,
    TResult? Function(_EditMovieId value)? editMovieId,
    TResult? Function(_EditDate value)? editDate,
    TResult? Function(_EditLocation value)? editLocation,
    TResult? Function(_EditPricePerSeat value)? editPricePerSeat,
    TResult? Function(_EditSeats value)? editSeats,
    TResult? Function(_Delete value)? delete,
  }) {
    return editMovieId?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Create value)? create,
    TResult Function(_EditId value)? editId,
    TResult Function(_EditUserId value)? editUserId,
    TResult Function(_EditMovieId value)? editMovieId,
    TResult Function(_EditDate value)? editDate,
    TResult Function(_EditLocation value)? editLocation,
    TResult Function(_EditPricePerSeat value)? editPricePerSeat,
    TResult Function(_EditSeats value)? editSeats,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (editMovieId != null) {
      return editMovieId(this);
    }
    return orElse();
  }
}

abstract class _EditMovieId implements NewticketEvent {
  const factory _EditMovieId(final String newMovieId) = _$_EditMovieId;

  String get newMovieId;
  @JsonKey(ignore: true)
  _$$_EditMovieIdCopyWith<_$_EditMovieId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EditDateCopyWith<$Res> {
  factory _$$_EditDateCopyWith(
          _$_EditDate value, $Res Function(_$_EditDate) then) =
      __$$_EditDateCopyWithImpl<$Res>;
  @useResult
  $Res call({Timestamp newDate});
}

/// @nodoc
class __$$_EditDateCopyWithImpl<$Res>
    extends _$NewticketEventCopyWithImpl<$Res, _$_EditDate>
    implements _$$_EditDateCopyWith<$Res> {
  __$$_EditDateCopyWithImpl(
      _$_EditDate _value, $Res Function(_$_EditDate) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newDate = null,
  }) {
    return _then(_$_EditDate(
      null == newDate
          ? _value.newDate
          : newDate // ignore: cast_nullable_to_non_nullable
              as Timestamp,
    ));
  }
}

/// @nodoc

class _$_EditDate implements _EditDate {
  const _$_EditDate(this.newDate);

  @override
  final Timestamp newDate;

  @override
  String toString() {
    return 'NewticketEvent.editDate(newDate: $newDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EditDate &&
            (identical(other.newDate, newDate) || other.newDate == newDate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EditDateCopyWith<_$_EditDate> get copyWith =>
      __$$_EditDateCopyWithImpl<_$_EditDate>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Ticket newTicket) create,
    required TResult Function(String newId) editId,
    required TResult Function(String newUserId) editUserId,
    required TResult Function(String newMovieId) editMovieId,
    required TResult Function(Timestamp newDate) editDate,
    required TResult Function(String newLocation) editLocation,
    required TResult Function(int newPricePerSeat) editPricePerSeat,
    required TResult Function(List<String> newSeats) editSeats,
    required TResult Function() delete,
  }) {
    return editDate(newDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Ticket newTicket)? create,
    TResult? Function(String newId)? editId,
    TResult? Function(String newUserId)? editUserId,
    TResult? Function(String newMovieId)? editMovieId,
    TResult? Function(Timestamp newDate)? editDate,
    TResult? Function(String newLocation)? editLocation,
    TResult? Function(int newPricePerSeat)? editPricePerSeat,
    TResult? Function(List<String> newSeats)? editSeats,
    TResult? Function()? delete,
  }) {
    return editDate?.call(newDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Ticket newTicket)? create,
    TResult Function(String newId)? editId,
    TResult Function(String newUserId)? editUserId,
    TResult Function(String newMovieId)? editMovieId,
    TResult Function(Timestamp newDate)? editDate,
    TResult Function(String newLocation)? editLocation,
    TResult Function(int newPricePerSeat)? editPricePerSeat,
    TResult Function(List<String> newSeats)? editSeats,
    TResult Function()? delete,
    required TResult orElse(),
  }) {
    if (editDate != null) {
      return editDate(newDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Create value) create,
    required TResult Function(_EditId value) editId,
    required TResult Function(_EditUserId value) editUserId,
    required TResult Function(_EditMovieId value) editMovieId,
    required TResult Function(_EditDate value) editDate,
    required TResult Function(_EditLocation value) editLocation,
    required TResult Function(_EditPricePerSeat value) editPricePerSeat,
    required TResult Function(_EditSeats value) editSeats,
    required TResult Function(_Delete value) delete,
  }) {
    return editDate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Create value)? create,
    TResult? Function(_EditId value)? editId,
    TResult? Function(_EditUserId value)? editUserId,
    TResult? Function(_EditMovieId value)? editMovieId,
    TResult? Function(_EditDate value)? editDate,
    TResult? Function(_EditLocation value)? editLocation,
    TResult? Function(_EditPricePerSeat value)? editPricePerSeat,
    TResult? Function(_EditSeats value)? editSeats,
    TResult? Function(_Delete value)? delete,
  }) {
    return editDate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Create value)? create,
    TResult Function(_EditId value)? editId,
    TResult Function(_EditUserId value)? editUserId,
    TResult Function(_EditMovieId value)? editMovieId,
    TResult Function(_EditDate value)? editDate,
    TResult Function(_EditLocation value)? editLocation,
    TResult Function(_EditPricePerSeat value)? editPricePerSeat,
    TResult Function(_EditSeats value)? editSeats,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (editDate != null) {
      return editDate(this);
    }
    return orElse();
  }
}

abstract class _EditDate implements NewticketEvent {
  const factory _EditDate(final Timestamp newDate) = _$_EditDate;

  Timestamp get newDate;
  @JsonKey(ignore: true)
  _$$_EditDateCopyWith<_$_EditDate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EditLocationCopyWith<$Res> {
  factory _$$_EditLocationCopyWith(
          _$_EditLocation value, $Res Function(_$_EditLocation) then) =
      __$$_EditLocationCopyWithImpl<$Res>;
  @useResult
  $Res call({String newLocation});
}

/// @nodoc
class __$$_EditLocationCopyWithImpl<$Res>
    extends _$NewticketEventCopyWithImpl<$Res, _$_EditLocation>
    implements _$$_EditLocationCopyWith<$Res> {
  __$$_EditLocationCopyWithImpl(
      _$_EditLocation _value, $Res Function(_$_EditLocation) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newLocation = null,
  }) {
    return _then(_$_EditLocation(
      null == newLocation
          ? _value.newLocation
          : newLocation // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EditLocation implements _EditLocation {
  const _$_EditLocation(this.newLocation);

  @override
  final String newLocation;

  @override
  String toString() {
    return 'NewticketEvent.editLocation(newLocation: $newLocation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EditLocation &&
            (identical(other.newLocation, newLocation) ||
                other.newLocation == newLocation));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newLocation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EditLocationCopyWith<_$_EditLocation> get copyWith =>
      __$$_EditLocationCopyWithImpl<_$_EditLocation>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Ticket newTicket) create,
    required TResult Function(String newId) editId,
    required TResult Function(String newUserId) editUserId,
    required TResult Function(String newMovieId) editMovieId,
    required TResult Function(Timestamp newDate) editDate,
    required TResult Function(String newLocation) editLocation,
    required TResult Function(int newPricePerSeat) editPricePerSeat,
    required TResult Function(List<String> newSeats) editSeats,
    required TResult Function() delete,
  }) {
    return editLocation(newLocation);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Ticket newTicket)? create,
    TResult? Function(String newId)? editId,
    TResult? Function(String newUserId)? editUserId,
    TResult? Function(String newMovieId)? editMovieId,
    TResult? Function(Timestamp newDate)? editDate,
    TResult? Function(String newLocation)? editLocation,
    TResult? Function(int newPricePerSeat)? editPricePerSeat,
    TResult? Function(List<String> newSeats)? editSeats,
    TResult? Function()? delete,
  }) {
    return editLocation?.call(newLocation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Ticket newTicket)? create,
    TResult Function(String newId)? editId,
    TResult Function(String newUserId)? editUserId,
    TResult Function(String newMovieId)? editMovieId,
    TResult Function(Timestamp newDate)? editDate,
    TResult Function(String newLocation)? editLocation,
    TResult Function(int newPricePerSeat)? editPricePerSeat,
    TResult Function(List<String> newSeats)? editSeats,
    TResult Function()? delete,
    required TResult orElse(),
  }) {
    if (editLocation != null) {
      return editLocation(newLocation);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Create value) create,
    required TResult Function(_EditId value) editId,
    required TResult Function(_EditUserId value) editUserId,
    required TResult Function(_EditMovieId value) editMovieId,
    required TResult Function(_EditDate value) editDate,
    required TResult Function(_EditLocation value) editLocation,
    required TResult Function(_EditPricePerSeat value) editPricePerSeat,
    required TResult Function(_EditSeats value) editSeats,
    required TResult Function(_Delete value) delete,
  }) {
    return editLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Create value)? create,
    TResult? Function(_EditId value)? editId,
    TResult? Function(_EditUserId value)? editUserId,
    TResult? Function(_EditMovieId value)? editMovieId,
    TResult? Function(_EditDate value)? editDate,
    TResult? Function(_EditLocation value)? editLocation,
    TResult? Function(_EditPricePerSeat value)? editPricePerSeat,
    TResult? Function(_EditSeats value)? editSeats,
    TResult? Function(_Delete value)? delete,
  }) {
    return editLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Create value)? create,
    TResult Function(_EditId value)? editId,
    TResult Function(_EditUserId value)? editUserId,
    TResult Function(_EditMovieId value)? editMovieId,
    TResult Function(_EditDate value)? editDate,
    TResult Function(_EditLocation value)? editLocation,
    TResult Function(_EditPricePerSeat value)? editPricePerSeat,
    TResult Function(_EditSeats value)? editSeats,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (editLocation != null) {
      return editLocation(this);
    }
    return orElse();
  }
}

abstract class _EditLocation implements NewticketEvent {
  const factory _EditLocation(final String newLocation) = _$_EditLocation;

  String get newLocation;
  @JsonKey(ignore: true)
  _$$_EditLocationCopyWith<_$_EditLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EditPricePerSeatCopyWith<$Res> {
  factory _$$_EditPricePerSeatCopyWith(
          _$_EditPricePerSeat value, $Res Function(_$_EditPricePerSeat) then) =
      __$$_EditPricePerSeatCopyWithImpl<$Res>;
  @useResult
  $Res call({int newPricePerSeat});
}

/// @nodoc
class __$$_EditPricePerSeatCopyWithImpl<$Res>
    extends _$NewticketEventCopyWithImpl<$Res, _$_EditPricePerSeat>
    implements _$$_EditPricePerSeatCopyWith<$Res> {
  __$$_EditPricePerSeatCopyWithImpl(
      _$_EditPricePerSeat _value, $Res Function(_$_EditPricePerSeat) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newPricePerSeat = null,
  }) {
    return _then(_$_EditPricePerSeat(
      null == newPricePerSeat
          ? _value.newPricePerSeat
          : newPricePerSeat // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_EditPricePerSeat implements _EditPricePerSeat {
  const _$_EditPricePerSeat(this.newPricePerSeat);

  @override
  final int newPricePerSeat;

  @override
  String toString() {
    return 'NewticketEvent.editPricePerSeat(newPricePerSeat: $newPricePerSeat)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EditPricePerSeat &&
            (identical(other.newPricePerSeat, newPricePerSeat) ||
                other.newPricePerSeat == newPricePerSeat));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newPricePerSeat);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EditPricePerSeatCopyWith<_$_EditPricePerSeat> get copyWith =>
      __$$_EditPricePerSeatCopyWithImpl<_$_EditPricePerSeat>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Ticket newTicket) create,
    required TResult Function(String newId) editId,
    required TResult Function(String newUserId) editUserId,
    required TResult Function(String newMovieId) editMovieId,
    required TResult Function(Timestamp newDate) editDate,
    required TResult Function(String newLocation) editLocation,
    required TResult Function(int newPricePerSeat) editPricePerSeat,
    required TResult Function(List<String> newSeats) editSeats,
    required TResult Function() delete,
  }) {
    return editPricePerSeat(newPricePerSeat);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Ticket newTicket)? create,
    TResult? Function(String newId)? editId,
    TResult? Function(String newUserId)? editUserId,
    TResult? Function(String newMovieId)? editMovieId,
    TResult? Function(Timestamp newDate)? editDate,
    TResult? Function(String newLocation)? editLocation,
    TResult? Function(int newPricePerSeat)? editPricePerSeat,
    TResult? Function(List<String> newSeats)? editSeats,
    TResult? Function()? delete,
  }) {
    return editPricePerSeat?.call(newPricePerSeat);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Ticket newTicket)? create,
    TResult Function(String newId)? editId,
    TResult Function(String newUserId)? editUserId,
    TResult Function(String newMovieId)? editMovieId,
    TResult Function(Timestamp newDate)? editDate,
    TResult Function(String newLocation)? editLocation,
    TResult Function(int newPricePerSeat)? editPricePerSeat,
    TResult Function(List<String> newSeats)? editSeats,
    TResult Function()? delete,
    required TResult orElse(),
  }) {
    if (editPricePerSeat != null) {
      return editPricePerSeat(newPricePerSeat);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Create value) create,
    required TResult Function(_EditId value) editId,
    required TResult Function(_EditUserId value) editUserId,
    required TResult Function(_EditMovieId value) editMovieId,
    required TResult Function(_EditDate value) editDate,
    required TResult Function(_EditLocation value) editLocation,
    required TResult Function(_EditPricePerSeat value) editPricePerSeat,
    required TResult Function(_EditSeats value) editSeats,
    required TResult Function(_Delete value) delete,
  }) {
    return editPricePerSeat(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Create value)? create,
    TResult? Function(_EditId value)? editId,
    TResult? Function(_EditUserId value)? editUserId,
    TResult? Function(_EditMovieId value)? editMovieId,
    TResult? Function(_EditDate value)? editDate,
    TResult? Function(_EditLocation value)? editLocation,
    TResult? Function(_EditPricePerSeat value)? editPricePerSeat,
    TResult? Function(_EditSeats value)? editSeats,
    TResult? Function(_Delete value)? delete,
  }) {
    return editPricePerSeat?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Create value)? create,
    TResult Function(_EditId value)? editId,
    TResult Function(_EditUserId value)? editUserId,
    TResult Function(_EditMovieId value)? editMovieId,
    TResult Function(_EditDate value)? editDate,
    TResult Function(_EditLocation value)? editLocation,
    TResult Function(_EditPricePerSeat value)? editPricePerSeat,
    TResult Function(_EditSeats value)? editSeats,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (editPricePerSeat != null) {
      return editPricePerSeat(this);
    }
    return orElse();
  }
}

abstract class _EditPricePerSeat implements NewticketEvent {
  const factory _EditPricePerSeat(final int newPricePerSeat) =
      _$_EditPricePerSeat;

  int get newPricePerSeat;
  @JsonKey(ignore: true)
  _$$_EditPricePerSeatCopyWith<_$_EditPricePerSeat> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EditSeatsCopyWith<$Res> {
  factory _$$_EditSeatsCopyWith(
          _$_EditSeats value, $Res Function(_$_EditSeats) then) =
      __$$_EditSeatsCopyWithImpl<$Res>;
  @useResult
  $Res call({List<String> newSeats});
}

/// @nodoc
class __$$_EditSeatsCopyWithImpl<$Res>
    extends _$NewticketEventCopyWithImpl<$Res, _$_EditSeats>
    implements _$$_EditSeatsCopyWith<$Res> {
  __$$_EditSeatsCopyWithImpl(
      _$_EditSeats _value, $Res Function(_$_EditSeats) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newSeats = null,
  }) {
    return _then(_$_EditSeats(
      null == newSeats
          ? _value._newSeats
          : newSeats // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_EditSeats implements _EditSeats {
  const _$_EditSeats(final List<String> newSeats) : _newSeats = newSeats;

  final List<String> _newSeats;
  @override
  List<String> get newSeats {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_newSeats);
  }

  @override
  String toString() {
    return 'NewticketEvent.editSeats(newSeats: $newSeats)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EditSeats &&
            const DeepCollectionEquality().equals(other._newSeats, _newSeats));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_newSeats));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EditSeatsCopyWith<_$_EditSeats> get copyWith =>
      __$$_EditSeatsCopyWithImpl<_$_EditSeats>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Ticket newTicket) create,
    required TResult Function(String newId) editId,
    required TResult Function(String newUserId) editUserId,
    required TResult Function(String newMovieId) editMovieId,
    required TResult Function(Timestamp newDate) editDate,
    required TResult Function(String newLocation) editLocation,
    required TResult Function(int newPricePerSeat) editPricePerSeat,
    required TResult Function(List<String> newSeats) editSeats,
    required TResult Function() delete,
  }) {
    return editSeats(newSeats);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Ticket newTicket)? create,
    TResult? Function(String newId)? editId,
    TResult? Function(String newUserId)? editUserId,
    TResult? Function(String newMovieId)? editMovieId,
    TResult? Function(Timestamp newDate)? editDate,
    TResult? Function(String newLocation)? editLocation,
    TResult? Function(int newPricePerSeat)? editPricePerSeat,
    TResult? Function(List<String> newSeats)? editSeats,
    TResult? Function()? delete,
  }) {
    return editSeats?.call(newSeats);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Ticket newTicket)? create,
    TResult Function(String newId)? editId,
    TResult Function(String newUserId)? editUserId,
    TResult Function(String newMovieId)? editMovieId,
    TResult Function(Timestamp newDate)? editDate,
    TResult Function(String newLocation)? editLocation,
    TResult Function(int newPricePerSeat)? editPricePerSeat,
    TResult Function(List<String> newSeats)? editSeats,
    TResult Function()? delete,
    required TResult orElse(),
  }) {
    if (editSeats != null) {
      return editSeats(newSeats);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Create value) create,
    required TResult Function(_EditId value) editId,
    required TResult Function(_EditUserId value) editUserId,
    required TResult Function(_EditMovieId value) editMovieId,
    required TResult Function(_EditDate value) editDate,
    required TResult Function(_EditLocation value) editLocation,
    required TResult Function(_EditPricePerSeat value) editPricePerSeat,
    required TResult Function(_EditSeats value) editSeats,
    required TResult Function(_Delete value) delete,
  }) {
    return editSeats(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Create value)? create,
    TResult? Function(_EditId value)? editId,
    TResult? Function(_EditUserId value)? editUserId,
    TResult? Function(_EditMovieId value)? editMovieId,
    TResult? Function(_EditDate value)? editDate,
    TResult? Function(_EditLocation value)? editLocation,
    TResult? Function(_EditPricePerSeat value)? editPricePerSeat,
    TResult? Function(_EditSeats value)? editSeats,
    TResult? Function(_Delete value)? delete,
  }) {
    return editSeats?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Create value)? create,
    TResult Function(_EditId value)? editId,
    TResult Function(_EditUserId value)? editUserId,
    TResult Function(_EditMovieId value)? editMovieId,
    TResult Function(_EditDate value)? editDate,
    TResult Function(_EditLocation value)? editLocation,
    TResult Function(_EditPricePerSeat value)? editPricePerSeat,
    TResult Function(_EditSeats value)? editSeats,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (editSeats != null) {
      return editSeats(this);
    }
    return orElse();
  }
}

abstract class _EditSeats implements NewticketEvent {
  const factory _EditSeats(final List<String> newSeats) = _$_EditSeats;

  List<String> get newSeats;
  @JsonKey(ignore: true)
  _$$_EditSeatsCopyWith<_$_EditSeats> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DeleteCopyWith<$Res> {
  factory _$$_DeleteCopyWith(_$_Delete value, $Res Function(_$_Delete) then) =
      __$$_DeleteCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_DeleteCopyWithImpl<$Res>
    extends _$NewticketEventCopyWithImpl<$Res, _$_Delete>
    implements _$$_DeleteCopyWith<$Res> {
  __$$_DeleteCopyWithImpl(_$_Delete _value, $Res Function(_$_Delete) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Delete implements _Delete {
  const _$_Delete();

  @override
  String toString() {
    return 'NewticketEvent.delete()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Delete);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Ticket newTicket) create,
    required TResult Function(String newId) editId,
    required TResult Function(String newUserId) editUserId,
    required TResult Function(String newMovieId) editMovieId,
    required TResult Function(Timestamp newDate) editDate,
    required TResult Function(String newLocation) editLocation,
    required TResult Function(int newPricePerSeat) editPricePerSeat,
    required TResult Function(List<String> newSeats) editSeats,
    required TResult Function() delete,
  }) {
    return delete();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Ticket newTicket)? create,
    TResult? Function(String newId)? editId,
    TResult? Function(String newUserId)? editUserId,
    TResult? Function(String newMovieId)? editMovieId,
    TResult? Function(Timestamp newDate)? editDate,
    TResult? Function(String newLocation)? editLocation,
    TResult? Function(int newPricePerSeat)? editPricePerSeat,
    TResult? Function(List<String> newSeats)? editSeats,
    TResult? Function()? delete,
  }) {
    return delete?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Ticket newTicket)? create,
    TResult Function(String newId)? editId,
    TResult Function(String newUserId)? editUserId,
    TResult Function(String newMovieId)? editMovieId,
    TResult Function(Timestamp newDate)? editDate,
    TResult Function(String newLocation)? editLocation,
    TResult Function(int newPricePerSeat)? editPricePerSeat,
    TResult Function(List<String> newSeats)? editSeats,
    TResult Function()? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Create value) create,
    required TResult Function(_EditId value) editId,
    required TResult Function(_EditUserId value) editUserId,
    required TResult Function(_EditMovieId value) editMovieId,
    required TResult Function(_EditDate value) editDate,
    required TResult Function(_EditLocation value) editLocation,
    required TResult Function(_EditPricePerSeat value) editPricePerSeat,
    required TResult Function(_EditSeats value) editSeats,
    required TResult Function(_Delete value) delete,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Create value)? create,
    TResult? Function(_EditId value)? editId,
    TResult? Function(_EditUserId value)? editUserId,
    TResult? Function(_EditMovieId value)? editMovieId,
    TResult? Function(_EditDate value)? editDate,
    TResult? Function(_EditLocation value)? editLocation,
    TResult? Function(_EditPricePerSeat value)? editPricePerSeat,
    TResult? Function(_EditSeats value)? editSeats,
    TResult? Function(_Delete value)? delete,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Create value)? create,
    TResult Function(_EditId value)? editId,
    TResult Function(_EditUserId value)? editUserId,
    TResult Function(_EditMovieId value)? editMovieId,
    TResult Function(_EditDate value)? editDate,
    TResult Function(_EditLocation value)? editLocation,
    TResult Function(_EditPricePerSeat value)? editPricePerSeat,
    TResult Function(_EditSeats value)? editSeats,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class _Delete implements NewticketEvent {
  const factory _Delete() = _$_Delete;
}

/// @nodoc
mixin _$NewticketState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Ticket ticket) created,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Ticket ticket)? created,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Ticket ticket)? created,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Created value) created,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Created value)? created,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Created value)? created,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewticketStateCopyWith<$Res> {
  factory $NewticketStateCopyWith(
          NewticketState value, $Res Function(NewticketState) then) =
      _$NewticketStateCopyWithImpl<$Res, NewticketState>;
}

/// @nodoc
class _$NewticketStateCopyWithImpl<$Res, $Val extends NewticketState>
    implements $NewticketStateCopyWith<$Res> {
  _$NewticketStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$NewticketStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'NewticketState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Ticket ticket) created,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Ticket ticket)? created,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Ticket ticket)? created,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Created value) created,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Created value)? created,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Created value)? created,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements NewticketState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_CreatedCopyWith<$Res> {
  factory _$$_CreatedCopyWith(
          _$_Created value, $Res Function(_$_Created) then) =
      __$$_CreatedCopyWithImpl<$Res>;
  @useResult
  $Res call({Ticket ticket});
}

/// @nodoc
class __$$_CreatedCopyWithImpl<$Res>
    extends _$NewticketStateCopyWithImpl<$Res, _$_Created>
    implements _$$_CreatedCopyWith<$Res> {
  __$$_CreatedCopyWithImpl(_$_Created _value, $Res Function(_$_Created) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ticket = null,
  }) {
    return _then(_$_Created(
      null == ticket
          ? _value.ticket
          : ticket // ignore: cast_nullable_to_non_nullable
              as Ticket,
    ));
  }
}

/// @nodoc

class _$_Created implements _Created {
  const _$_Created(this.ticket);

  @override
  final Ticket ticket;

  @override
  String toString() {
    return 'NewticketState.created(ticket: $ticket)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Created &&
            (identical(other.ticket, ticket) || other.ticket == ticket));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ticket);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreatedCopyWith<_$_Created> get copyWith =>
      __$$_CreatedCopyWithImpl<_$_Created>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Ticket ticket) created,
  }) {
    return created(ticket);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Ticket ticket)? created,
  }) {
    return created?.call(ticket);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Ticket ticket)? created,
    required TResult orElse(),
  }) {
    if (created != null) {
      return created(ticket);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Created value) created,
  }) {
    return created(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Created value)? created,
  }) {
    return created?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Created value)? created,
    required TResult orElse(),
  }) {
    if (created != null) {
      return created(this);
    }
    return orElse();
  }
}

abstract class _Created implements NewticketState {
  const factory _Created(final Ticket ticket) = _$_Created;

  Ticket get ticket;
  @JsonKey(ignore: true)
  _$$_CreatedCopyWith<_$_Created> get copyWith =>
      throw _privateConstructorUsedError;
}
