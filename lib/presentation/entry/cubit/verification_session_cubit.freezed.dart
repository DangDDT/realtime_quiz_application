// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verification_session_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$VerificationSessionState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VerificationSessionState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'VerificationSessionState()';
}


}

/// @nodoc
class $VerificationSessionStateCopyWith<$Res>  {
$VerificationSessionStateCopyWith(VerificationSessionState _, $Res Function(VerificationSessionState) __);
}


/// Adds pattern-matching-related methods to [VerificationSessionState].
extension VerificationSessionStatePatterns on VerificationSessionState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( VerificationSessionInitialState value)?  initial,TResult Function( VerificationSessionLoadingState value)?  loading,TResult Function( VerificationSessionSuccessState value)?  success,TResult Function( VerificationSessionNoSessionFoundState value)?  noSessionFound,TResult Function( VerificationSessionErrorState value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case VerificationSessionInitialState() when initial != null:
return initial(_that);case VerificationSessionLoadingState() when loading != null:
return loading(_that);case VerificationSessionSuccessState() when success != null:
return success(_that);case VerificationSessionNoSessionFoundState() when noSessionFound != null:
return noSessionFound(_that);case VerificationSessionErrorState() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( VerificationSessionInitialState value)  initial,required TResult Function( VerificationSessionLoadingState value)  loading,required TResult Function( VerificationSessionSuccessState value)  success,required TResult Function( VerificationSessionNoSessionFoundState value)  noSessionFound,required TResult Function( VerificationSessionErrorState value)  error,}){
final _that = this;
switch (_that) {
case VerificationSessionInitialState():
return initial(_that);case VerificationSessionLoadingState():
return loading(_that);case VerificationSessionSuccessState():
return success(_that);case VerificationSessionNoSessionFoundState():
return noSessionFound(_that);case VerificationSessionErrorState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( VerificationSessionInitialState value)?  initial,TResult? Function( VerificationSessionLoadingState value)?  loading,TResult? Function( VerificationSessionSuccessState value)?  success,TResult? Function( VerificationSessionNoSessionFoundState value)?  noSessionFound,TResult? Function( VerificationSessionErrorState value)?  error,}){
final _that = this;
switch (_that) {
case VerificationSessionInitialState() when initial != null:
return initial(_that);case VerificationSessionLoadingState() when loading != null:
return loading(_that);case VerificationSessionSuccessState() when success != null:
return success(_that);case VerificationSessionNoSessionFoundState() when noSessionFound != null:
return noSessionFound(_that);case VerificationSessionErrorState() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( String sessionId,  SessionStateEnum sessionState)?  success,TResult Function()?  noSessionFound,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case VerificationSessionInitialState() when initial != null:
return initial();case VerificationSessionLoadingState() when loading != null:
return loading();case VerificationSessionSuccessState() when success != null:
return success(_that.sessionId,_that.sessionState);case VerificationSessionNoSessionFoundState() when noSessionFound != null:
return noSessionFound();case VerificationSessionErrorState() when error != null:
return error(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( String sessionId,  SessionStateEnum sessionState)  success,required TResult Function()  noSessionFound,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case VerificationSessionInitialState():
return initial();case VerificationSessionLoadingState():
return loading();case VerificationSessionSuccessState():
return success(_that.sessionId,_that.sessionState);case VerificationSessionNoSessionFoundState():
return noSessionFound();case VerificationSessionErrorState():
return error(_that.message);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( String sessionId,  SessionStateEnum sessionState)?  success,TResult? Function()?  noSessionFound,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case VerificationSessionInitialState() when initial != null:
return initial();case VerificationSessionLoadingState() when loading != null:
return loading();case VerificationSessionSuccessState() when success != null:
return success(_that.sessionId,_that.sessionState);case VerificationSessionNoSessionFoundState() when noSessionFound != null:
return noSessionFound();case VerificationSessionErrorState() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class VerificationSessionInitialState implements VerificationSessionState {
  const VerificationSessionInitialState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VerificationSessionInitialState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'VerificationSessionState.initial()';
}


}




/// @nodoc


class VerificationSessionLoadingState implements VerificationSessionState {
  const VerificationSessionLoadingState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VerificationSessionLoadingState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'VerificationSessionState.loading()';
}


}




/// @nodoc


class VerificationSessionSuccessState implements VerificationSessionState {
  const VerificationSessionSuccessState({required this.sessionId, required this.sessionState});
  

 final  String sessionId;
 final  SessionStateEnum sessionState;

/// Create a copy of VerificationSessionState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VerificationSessionSuccessStateCopyWith<VerificationSessionSuccessState> get copyWith => _$VerificationSessionSuccessStateCopyWithImpl<VerificationSessionSuccessState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VerificationSessionSuccessState&&(identical(other.sessionId, sessionId) || other.sessionId == sessionId)&&(identical(other.sessionState, sessionState) || other.sessionState == sessionState));
}


@override
int get hashCode => Object.hash(runtimeType,sessionId,sessionState);

@override
String toString() {
  return 'VerificationSessionState.success(sessionId: $sessionId, sessionState: $sessionState)';
}


}

/// @nodoc
abstract mixin class $VerificationSessionSuccessStateCopyWith<$Res> implements $VerificationSessionStateCopyWith<$Res> {
  factory $VerificationSessionSuccessStateCopyWith(VerificationSessionSuccessState value, $Res Function(VerificationSessionSuccessState) _then) = _$VerificationSessionSuccessStateCopyWithImpl;
@useResult
$Res call({
 String sessionId, SessionStateEnum sessionState
});




}
/// @nodoc
class _$VerificationSessionSuccessStateCopyWithImpl<$Res>
    implements $VerificationSessionSuccessStateCopyWith<$Res> {
  _$VerificationSessionSuccessStateCopyWithImpl(this._self, this._then);

  final VerificationSessionSuccessState _self;
  final $Res Function(VerificationSessionSuccessState) _then;

/// Create a copy of VerificationSessionState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? sessionId = null,Object? sessionState = null,}) {
  return _then(VerificationSessionSuccessState(
sessionId: null == sessionId ? _self.sessionId : sessionId // ignore: cast_nullable_to_non_nullable
as String,sessionState: null == sessionState ? _self.sessionState : sessionState // ignore: cast_nullable_to_non_nullable
as SessionStateEnum,
  ));
}


}

/// @nodoc


class VerificationSessionNoSessionFoundState implements VerificationSessionState {
  const VerificationSessionNoSessionFoundState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VerificationSessionNoSessionFoundState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'VerificationSessionState.noSessionFound()';
}


}




/// @nodoc


class VerificationSessionErrorState implements VerificationSessionState {
  const VerificationSessionErrorState({required this.message});
  

 final  String message;

/// Create a copy of VerificationSessionState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VerificationSessionErrorStateCopyWith<VerificationSessionErrorState> get copyWith => _$VerificationSessionErrorStateCopyWithImpl<VerificationSessionErrorState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VerificationSessionErrorState&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'VerificationSessionState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $VerificationSessionErrorStateCopyWith<$Res> implements $VerificationSessionStateCopyWith<$Res> {
  factory $VerificationSessionErrorStateCopyWith(VerificationSessionErrorState value, $Res Function(VerificationSessionErrorState) _then) = _$VerificationSessionErrorStateCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$VerificationSessionErrorStateCopyWithImpl<$Res>
    implements $VerificationSessionErrorStateCopyWith<$Res> {
  _$VerificationSessionErrorStateCopyWithImpl(this._self, this._then);

  final VerificationSessionErrorState _self;
  final $Res Function(VerificationSessionErrorState) _then;

/// Create a copy of VerificationSessionState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(VerificationSessionErrorState(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
