// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'participant_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ParticipantEvent {

 String get sessionId;
/// Create a copy of ParticipantEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ParticipantEventCopyWith<ParticipantEvent> get copyWith => _$ParticipantEventCopyWithImpl<ParticipantEvent>(this as ParticipantEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ParticipantEvent&&(identical(other.sessionId, sessionId) || other.sessionId == sessionId));
}


@override
int get hashCode => Object.hash(runtimeType,sessionId);

@override
String toString() {
  return 'ParticipantEvent(sessionId: $sessionId)';
}


}

/// @nodoc
abstract mixin class $ParticipantEventCopyWith<$Res>  {
  factory $ParticipantEventCopyWith(ParticipantEvent value, $Res Function(ParticipantEvent) _then) = _$ParticipantEventCopyWithImpl;
@useResult
$Res call({
 String sessionId
});




}
/// @nodoc
class _$ParticipantEventCopyWithImpl<$Res>
    implements $ParticipantEventCopyWith<$Res> {
  _$ParticipantEventCopyWithImpl(this._self, this._then);

  final ParticipantEvent _self;
  final $Res Function(ParticipantEvent) _then;

/// Create a copy of ParticipantEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? sessionId = null,}) {
  return _then(_self.copyWith(
sessionId: null == sessionId ? _self.sessionId : sessionId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ParticipantEvent].
extension ParticipantEventPatterns on ParticipantEvent {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ParticipantStartedEvent value)?  started,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ParticipantStartedEvent() when started != null:
return started(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ParticipantStartedEvent value)  started,}){
final _that = this;
switch (_that) {
case ParticipantStartedEvent():
return started(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ParticipantStartedEvent value)?  started,}){
final _that = this;
switch (_that) {
case ParticipantStartedEvent() when started != null:
return started(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String sessionId)?  started,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ParticipantStartedEvent() when started != null:
return started(_that.sessionId);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String sessionId)  started,}) {final _that = this;
switch (_that) {
case ParticipantStartedEvent():
return started(_that.sessionId);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String sessionId)?  started,}) {final _that = this;
switch (_that) {
case ParticipantStartedEvent() when started != null:
return started(_that.sessionId);case _:
  return null;

}
}

}

/// @nodoc


class ParticipantStartedEvent implements ParticipantEvent {
  const ParticipantStartedEvent({required this.sessionId});
  

@override final  String sessionId;

/// Create a copy of ParticipantEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ParticipantStartedEventCopyWith<ParticipantStartedEvent> get copyWith => _$ParticipantStartedEventCopyWithImpl<ParticipantStartedEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ParticipantStartedEvent&&(identical(other.sessionId, sessionId) || other.sessionId == sessionId));
}


@override
int get hashCode => Object.hash(runtimeType,sessionId);

@override
String toString() {
  return 'ParticipantEvent.started(sessionId: $sessionId)';
}


}

/// @nodoc
abstract mixin class $ParticipantStartedEventCopyWith<$Res> implements $ParticipantEventCopyWith<$Res> {
  factory $ParticipantStartedEventCopyWith(ParticipantStartedEvent value, $Res Function(ParticipantStartedEvent) _then) = _$ParticipantStartedEventCopyWithImpl;
@override @useResult
$Res call({
 String sessionId
});




}
/// @nodoc
class _$ParticipantStartedEventCopyWithImpl<$Res>
    implements $ParticipantStartedEventCopyWith<$Res> {
  _$ParticipantStartedEventCopyWithImpl(this._self, this._then);

  final ParticipantStartedEvent _self;
  final $Res Function(ParticipantStartedEvent) _then;

/// Create a copy of ParticipantEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? sessionId = null,}) {
  return _then(ParticipantStartedEvent(
sessionId: null == sessionId ? _self.sessionId : sessionId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$ParticipantState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ParticipantState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ParticipantState()';
}


}

/// @nodoc
class $ParticipantStateCopyWith<$Res>  {
$ParticipantStateCopyWith(ParticipantState _, $Res Function(ParticipantState) __);
}


/// Adds pattern-matching-related methods to [ParticipantState].
extension ParticipantStatePatterns on ParticipantState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ParticipantInitialState value)?  initial,TResult Function( ParticipantLoadingState value)?  loading,TResult Function( ParticipantSuccessState value)?  success,TResult Function( ParticipantErrorState value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ParticipantInitialState() when initial != null:
return initial(_that);case ParticipantLoadingState() when loading != null:
return loading(_that);case ParticipantSuccessState() when success != null:
return success(_that);case ParticipantErrorState() when error != null:
return error(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ParticipantInitialState value)  initial,required TResult Function( ParticipantLoadingState value)  loading,required TResult Function( ParticipantSuccessState value)  success,required TResult Function( ParticipantErrorState value)  error,}){
final _that = this;
switch (_that) {
case ParticipantInitialState():
return initial(_that);case ParticipantLoadingState():
return loading(_that);case ParticipantSuccessState():
return success(_that);case ParticipantErrorState():
return error(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ParticipantInitialState value)?  initial,TResult? Function( ParticipantLoadingState value)?  loading,TResult? Function( ParticipantSuccessState value)?  success,TResult? Function( ParticipantErrorState value)?  error,}){
final _that = this;
switch (_that) {
case ParticipantInitialState() when initial != null:
return initial(_that);case ParticipantLoadingState() when loading != null:
return loading(_that);case ParticipantSuccessState() when success != null:
return success(_that);case ParticipantErrorState() when error != null:
return error(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( List<Participant> participants)?  success,TResult Function( AppError error)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ParticipantInitialState() when initial != null:
return initial();case ParticipantLoadingState() when loading != null:
return loading();case ParticipantSuccessState() when success != null:
return success(_that.participants);case ParticipantErrorState() when error != null:
return error(_that.error);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( List<Participant> participants)  success,required TResult Function( AppError error)  error,}) {final _that = this;
switch (_that) {
case ParticipantInitialState():
return initial();case ParticipantLoadingState():
return loading();case ParticipantSuccessState():
return success(_that.participants);case ParticipantErrorState():
return error(_that.error);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( List<Participant> participants)?  success,TResult? Function( AppError error)?  error,}) {final _that = this;
switch (_that) {
case ParticipantInitialState() when initial != null:
return initial();case ParticipantLoadingState() when loading != null:
return loading();case ParticipantSuccessState() when success != null:
return success(_that.participants);case ParticipantErrorState() when error != null:
return error(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class ParticipantInitialState implements ParticipantState {
  const ParticipantInitialState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ParticipantInitialState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ParticipantState.initial()';
}


}




/// @nodoc


class ParticipantLoadingState implements ParticipantState {
  const ParticipantLoadingState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ParticipantLoadingState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ParticipantState.loading()';
}


}




/// @nodoc


class ParticipantSuccessState implements ParticipantState {
  const ParticipantSuccessState(final  List<Participant> participants): _participants = participants;
  

 final  List<Participant> _participants;
 List<Participant> get participants {
  if (_participants is EqualUnmodifiableListView) return _participants;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_participants);
}


/// Create a copy of ParticipantState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ParticipantSuccessStateCopyWith<ParticipantSuccessState> get copyWith => _$ParticipantSuccessStateCopyWithImpl<ParticipantSuccessState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ParticipantSuccessState&&const DeepCollectionEquality().equals(other._participants, _participants));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_participants));

@override
String toString() {
  return 'ParticipantState.success(participants: $participants)';
}


}

/// @nodoc
abstract mixin class $ParticipantSuccessStateCopyWith<$Res> implements $ParticipantStateCopyWith<$Res> {
  factory $ParticipantSuccessStateCopyWith(ParticipantSuccessState value, $Res Function(ParticipantSuccessState) _then) = _$ParticipantSuccessStateCopyWithImpl;
@useResult
$Res call({
 List<Participant> participants
});




}
/// @nodoc
class _$ParticipantSuccessStateCopyWithImpl<$Res>
    implements $ParticipantSuccessStateCopyWith<$Res> {
  _$ParticipantSuccessStateCopyWithImpl(this._self, this._then);

  final ParticipantSuccessState _self;
  final $Res Function(ParticipantSuccessState) _then;

/// Create a copy of ParticipantState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? participants = null,}) {
  return _then(ParticipantSuccessState(
null == participants ? _self._participants : participants // ignore: cast_nullable_to_non_nullable
as List<Participant>,
  ));
}


}

/// @nodoc


class ParticipantErrorState implements ParticipantState {
  const ParticipantErrorState(this.error);
  

 final  AppError error;

/// Create a copy of ParticipantState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ParticipantErrorStateCopyWith<ParticipantErrorState> get copyWith => _$ParticipantErrorStateCopyWithImpl<ParticipantErrorState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ParticipantErrorState&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'ParticipantState.error(error: $error)';
}


}

/// @nodoc
abstract mixin class $ParticipantErrorStateCopyWith<$Res> implements $ParticipantStateCopyWith<$Res> {
  factory $ParticipantErrorStateCopyWith(ParticipantErrorState value, $Res Function(ParticipantErrorState) _then) = _$ParticipantErrorStateCopyWithImpl;
@useResult
$Res call({
 AppError error
});


$AppErrorCopyWith<$Res> get error;

}
/// @nodoc
class _$ParticipantErrorStateCopyWithImpl<$Res>
    implements $ParticipantErrorStateCopyWith<$Res> {
  _$ParticipantErrorStateCopyWithImpl(this._self, this._then);

  final ParticipantErrorState _self;
  final $Res Function(ParticipantErrorState) _then;

/// Create a copy of ParticipantState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(ParticipantErrorState(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as AppError,
  ));
}

/// Create a copy of ParticipantState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AppErrorCopyWith<$Res> get error {
  
  return $AppErrorCopyWith<$Res>(_self.error, (value) {
    return _then(_self.copyWith(error: value));
  });
}
}

// dart format on
