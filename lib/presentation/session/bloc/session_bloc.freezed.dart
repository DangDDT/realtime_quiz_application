// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'session_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SessionEvent {

 String get sessionId;
/// Create a copy of SessionEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SessionEventCopyWith<SessionEvent> get copyWith => _$SessionEventCopyWithImpl<SessionEvent>(this as SessionEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SessionEvent&&(identical(other.sessionId, sessionId) || other.sessionId == sessionId));
}


@override
int get hashCode => Object.hash(runtimeType,sessionId);

@override
String toString() {
  return 'SessionEvent(sessionId: $sessionId)';
}


}

/// @nodoc
abstract mixin class $SessionEventCopyWith<$Res>  {
  factory $SessionEventCopyWith(SessionEvent value, $Res Function(SessionEvent) _then) = _$SessionEventCopyWithImpl;
@useResult
$Res call({
 String sessionId
});




}
/// @nodoc
class _$SessionEventCopyWithImpl<$Res>
    implements $SessionEventCopyWith<$Res> {
  _$SessionEventCopyWithImpl(this._self, this._then);

  final SessionEvent _self;
  final $Res Function(SessionEvent) _then;

/// Create a copy of SessionEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? sessionId = null,}) {
  return _then(_self.copyWith(
sessionId: null == sessionId ? _self.sessionId : sessionId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SessionEvent].
extension SessionEventPatterns on SessionEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( WatchSessionStatusEvent value)?  watchSession,TResult Function( LeaveSessionEvent value)?  leaveSession,required TResult orElse(),}){
final _that = this;
switch (_that) {
case WatchSessionStatusEvent() when watchSession != null:
return watchSession(_that);case LeaveSessionEvent() when leaveSession != null:
return leaveSession(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( WatchSessionStatusEvent value)  watchSession,required TResult Function( LeaveSessionEvent value)  leaveSession,}){
final _that = this;
switch (_that) {
case WatchSessionStatusEvent():
return watchSession(_that);case LeaveSessionEvent():
return leaveSession(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( WatchSessionStatusEvent value)?  watchSession,TResult? Function( LeaveSessionEvent value)?  leaveSession,}){
final _that = this;
switch (_that) {
case WatchSessionStatusEvent() when watchSession != null:
return watchSession(_that);case LeaveSessionEvent() when leaveSession != null:
return leaveSession(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String sessionId)?  watchSession,TResult Function( String sessionId,  String userId)?  leaveSession,required TResult orElse(),}) {final _that = this;
switch (_that) {
case WatchSessionStatusEvent() when watchSession != null:
return watchSession(_that.sessionId);case LeaveSessionEvent() when leaveSession != null:
return leaveSession(_that.sessionId,_that.userId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String sessionId)  watchSession,required TResult Function( String sessionId,  String userId)  leaveSession,}) {final _that = this;
switch (_that) {
case WatchSessionStatusEvent():
return watchSession(_that.sessionId);case LeaveSessionEvent():
return leaveSession(_that.sessionId,_that.userId);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String sessionId)?  watchSession,TResult? Function( String sessionId,  String userId)?  leaveSession,}) {final _that = this;
switch (_that) {
case WatchSessionStatusEvent() when watchSession != null:
return watchSession(_that.sessionId);case LeaveSessionEvent() when leaveSession != null:
return leaveSession(_that.sessionId,_that.userId);case _:
  return null;

}
}

}

/// @nodoc


class WatchSessionStatusEvent implements SessionEvent {
  const WatchSessionStatusEvent({required this.sessionId});
  

@override final  String sessionId;

/// Create a copy of SessionEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WatchSessionStatusEventCopyWith<WatchSessionStatusEvent> get copyWith => _$WatchSessionStatusEventCopyWithImpl<WatchSessionStatusEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WatchSessionStatusEvent&&(identical(other.sessionId, sessionId) || other.sessionId == sessionId));
}


@override
int get hashCode => Object.hash(runtimeType,sessionId);

@override
String toString() {
  return 'SessionEvent.watchSession(sessionId: $sessionId)';
}


}

/// @nodoc
abstract mixin class $WatchSessionStatusEventCopyWith<$Res> implements $SessionEventCopyWith<$Res> {
  factory $WatchSessionStatusEventCopyWith(WatchSessionStatusEvent value, $Res Function(WatchSessionStatusEvent) _then) = _$WatchSessionStatusEventCopyWithImpl;
@override @useResult
$Res call({
 String sessionId
});




}
/// @nodoc
class _$WatchSessionStatusEventCopyWithImpl<$Res>
    implements $WatchSessionStatusEventCopyWith<$Res> {
  _$WatchSessionStatusEventCopyWithImpl(this._self, this._then);

  final WatchSessionStatusEvent _self;
  final $Res Function(WatchSessionStatusEvent) _then;

/// Create a copy of SessionEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? sessionId = null,}) {
  return _then(WatchSessionStatusEvent(
sessionId: null == sessionId ? _self.sessionId : sessionId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class LeaveSessionEvent implements SessionEvent {
  const LeaveSessionEvent({required this.sessionId, required this.userId});
  

@override final  String sessionId;
 final  String userId;

/// Create a copy of SessionEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LeaveSessionEventCopyWith<LeaveSessionEvent> get copyWith => _$LeaveSessionEventCopyWithImpl<LeaveSessionEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LeaveSessionEvent&&(identical(other.sessionId, sessionId) || other.sessionId == sessionId)&&(identical(other.userId, userId) || other.userId == userId));
}


@override
int get hashCode => Object.hash(runtimeType,sessionId,userId);

@override
String toString() {
  return 'SessionEvent.leaveSession(sessionId: $sessionId, userId: $userId)';
}


}

/// @nodoc
abstract mixin class $LeaveSessionEventCopyWith<$Res> implements $SessionEventCopyWith<$Res> {
  factory $LeaveSessionEventCopyWith(LeaveSessionEvent value, $Res Function(LeaveSessionEvent) _then) = _$LeaveSessionEventCopyWithImpl;
@override @useResult
$Res call({
 String sessionId, String userId
});




}
/// @nodoc
class _$LeaveSessionEventCopyWithImpl<$Res>
    implements $LeaveSessionEventCopyWith<$Res> {
  _$LeaveSessionEventCopyWithImpl(this._self, this._then);

  final LeaveSessionEvent _self;
  final $Res Function(LeaveSessionEvent) _then;

/// Create a copy of SessionEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? sessionId = null,Object? userId = null,}) {
  return _then(LeaveSessionEvent(
sessionId: null == sessionId ? _self.sessionId : sessionId // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$SessionState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SessionState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SessionState()';
}


}

/// @nodoc
class $SessionStateCopyWith<$Res>  {
$SessionStateCopyWith(SessionState _, $Res Function(SessionState) __);
}


/// Adds pattern-matching-related methods to [SessionState].
extension SessionStatePatterns on SessionState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( SessionLoadingState value)?  loading,TResult Function( SessionWaitingState value)?  waiting,TResult Function( SessionActiveState value)?  active,TResult Function( SessionCanceledState value)?  canceled,TResult Function( SessionFinishedState value)?  finished,TResult Function( SessionErrorState value)?  error,TResult Function( SessionLeftState value)?  leftSession,required TResult orElse(),}){
final _that = this;
switch (_that) {
case SessionLoadingState() when loading != null:
return loading(_that);case SessionWaitingState() when waiting != null:
return waiting(_that);case SessionActiveState() when active != null:
return active(_that);case SessionCanceledState() when canceled != null:
return canceled(_that);case SessionFinishedState() when finished != null:
return finished(_that);case SessionErrorState() when error != null:
return error(_that);case SessionLeftState() when leftSession != null:
return leftSession(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( SessionLoadingState value)  loading,required TResult Function( SessionWaitingState value)  waiting,required TResult Function( SessionActiveState value)  active,required TResult Function( SessionCanceledState value)  canceled,required TResult Function( SessionFinishedState value)  finished,required TResult Function( SessionErrorState value)  error,required TResult Function( SessionLeftState value)  leftSession,}){
final _that = this;
switch (_that) {
case SessionLoadingState():
return loading(_that);case SessionWaitingState():
return waiting(_that);case SessionActiveState():
return active(_that);case SessionCanceledState():
return canceled(_that);case SessionFinishedState():
return finished(_that);case SessionErrorState():
return error(_that);case SessionLeftState():
return leftSession(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( SessionLoadingState value)?  loading,TResult? Function( SessionWaitingState value)?  waiting,TResult? Function( SessionActiveState value)?  active,TResult? Function( SessionCanceledState value)?  canceled,TResult? Function( SessionFinishedState value)?  finished,TResult? Function( SessionErrorState value)?  error,TResult? Function( SessionLeftState value)?  leftSession,}){
final _that = this;
switch (_that) {
case SessionLoadingState() when loading != null:
return loading(_that);case SessionWaitingState() when waiting != null:
return waiting(_that);case SessionActiveState() when active != null:
return active(_that);case SessionCanceledState() when canceled != null:
return canceled(_that);case SessionFinishedState() when finished != null:
return finished(_that);case SessionErrorState() when error != null:
return error(_that);case SessionLeftState() when leftSession != null:
return leftSession(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loading,TResult Function( Session session)?  waiting,TResult Function( Session session)?  active,TResult Function( Session session)?  canceled,TResult Function( Session session)?  finished,TResult Function( AppError error,  String sessionId)?  error,TResult Function( String sessionId)?  leftSession,required TResult orElse(),}) {final _that = this;
switch (_that) {
case SessionLoadingState() when loading != null:
return loading();case SessionWaitingState() when waiting != null:
return waiting(_that.session);case SessionActiveState() when active != null:
return active(_that.session);case SessionCanceledState() when canceled != null:
return canceled(_that.session);case SessionFinishedState() when finished != null:
return finished(_that.session);case SessionErrorState() when error != null:
return error(_that.error,_that.sessionId);case SessionLeftState() when leftSession != null:
return leftSession(_that.sessionId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loading,required TResult Function( Session session)  waiting,required TResult Function( Session session)  active,required TResult Function( Session session)  canceled,required TResult Function( Session session)  finished,required TResult Function( AppError error,  String sessionId)  error,required TResult Function( String sessionId)  leftSession,}) {final _that = this;
switch (_that) {
case SessionLoadingState():
return loading();case SessionWaitingState():
return waiting(_that.session);case SessionActiveState():
return active(_that.session);case SessionCanceledState():
return canceled(_that.session);case SessionFinishedState():
return finished(_that.session);case SessionErrorState():
return error(_that.error,_that.sessionId);case SessionLeftState():
return leftSession(_that.sessionId);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loading,TResult? Function( Session session)?  waiting,TResult? Function( Session session)?  active,TResult? Function( Session session)?  canceled,TResult? Function( Session session)?  finished,TResult? Function( AppError error,  String sessionId)?  error,TResult? Function( String sessionId)?  leftSession,}) {final _that = this;
switch (_that) {
case SessionLoadingState() when loading != null:
return loading();case SessionWaitingState() when waiting != null:
return waiting(_that.session);case SessionActiveState() when active != null:
return active(_that.session);case SessionCanceledState() when canceled != null:
return canceled(_that.session);case SessionFinishedState() when finished != null:
return finished(_that.session);case SessionErrorState() when error != null:
return error(_that.error,_that.sessionId);case SessionLeftState() when leftSession != null:
return leftSession(_that.sessionId);case _:
  return null;

}
}

}

/// @nodoc


class SessionLoadingState implements SessionState {
  const SessionLoadingState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SessionLoadingState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SessionState.loading()';
}


}




/// @nodoc


class SessionWaitingState implements SessionState {
  const SessionWaitingState({required this.session});
  

 final  Session session;

/// Create a copy of SessionState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SessionWaitingStateCopyWith<SessionWaitingState> get copyWith => _$SessionWaitingStateCopyWithImpl<SessionWaitingState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SessionWaitingState&&(identical(other.session, session) || other.session == session));
}


@override
int get hashCode => Object.hash(runtimeType,session);

@override
String toString() {
  return 'SessionState.waiting(session: $session)';
}


}

/// @nodoc
abstract mixin class $SessionWaitingStateCopyWith<$Res> implements $SessionStateCopyWith<$Res> {
  factory $SessionWaitingStateCopyWith(SessionWaitingState value, $Res Function(SessionWaitingState) _then) = _$SessionWaitingStateCopyWithImpl;
@useResult
$Res call({
 Session session
});


$SessionCopyWith<$Res> get session;

}
/// @nodoc
class _$SessionWaitingStateCopyWithImpl<$Res>
    implements $SessionWaitingStateCopyWith<$Res> {
  _$SessionWaitingStateCopyWithImpl(this._self, this._then);

  final SessionWaitingState _self;
  final $Res Function(SessionWaitingState) _then;

/// Create a copy of SessionState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? session = null,}) {
  return _then(SessionWaitingState(
session: null == session ? _self.session : session // ignore: cast_nullable_to_non_nullable
as Session,
  ));
}

/// Create a copy of SessionState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SessionCopyWith<$Res> get session {
  
  return $SessionCopyWith<$Res>(_self.session, (value) {
    return _then(_self.copyWith(session: value));
  });
}
}

/// @nodoc


class SessionActiveState implements SessionState {
  const SessionActiveState({required this.session});
  

 final  Session session;

/// Create a copy of SessionState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SessionActiveStateCopyWith<SessionActiveState> get copyWith => _$SessionActiveStateCopyWithImpl<SessionActiveState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SessionActiveState&&(identical(other.session, session) || other.session == session));
}


@override
int get hashCode => Object.hash(runtimeType,session);

@override
String toString() {
  return 'SessionState.active(session: $session)';
}


}

/// @nodoc
abstract mixin class $SessionActiveStateCopyWith<$Res> implements $SessionStateCopyWith<$Res> {
  factory $SessionActiveStateCopyWith(SessionActiveState value, $Res Function(SessionActiveState) _then) = _$SessionActiveStateCopyWithImpl;
@useResult
$Res call({
 Session session
});


$SessionCopyWith<$Res> get session;

}
/// @nodoc
class _$SessionActiveStateCopyWithImpl<$Res>
    implements $SessionActiveStateCopyWith<$Res> {
  _$SessionActiveStateCopyWithImpl(this._self, this._then);

  final SessionActiveState _self;
  final $Res Function(SessionActiveState) _then;

/// Create a copy of SessionState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? session = null,}) {
  return _then(SessionActiveState(
session: null == session ? _self.session : session // ignore: cast_nullable_to_non_nullable
as Session,
  ));
}

/// Create a copy of SessionState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SessionCopyWith<$Res> get session {
  
  return $SessionCopyWith<$Res>(_self.session, (value) {
    return _then(_self.copyWith(session: value));
  });
}
}

/// @nodoc


class SessionCanceledState implements SessionState {
  const SessionCanceledState({required this.session});
  

 final  Session session;

/// Create a copy of SessionState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SessionCanceledStateCopyWith<SessionCanceledState> get copyWith => _$SessionCanceledStateCopyWithImpl<SessionCanceledState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SessionCanceledState&&(identical(other.session, session) || other.session == session));
}


@override
int get hashCode => Object.hash(runtimeType,session);

@override
String toString() {
  return 'SessionState.canceled(session: $session)';
}


}

/// @nodoc
abstract mixin class $SessionCanceledStateCopyWith<$Res> implements $SessionStateCopyWith<$Res> {
  factory $SessionCanceledStateCopyWith(SessionCanceledState value, $Res Function(SessionCanceledState) _then) = _$SessionCanceledStateCopyWithImpl;
@useResult
$Res call({
 Session session
});


$SessionCopyWith<$Res> get session;

}
/// @nodoc
class _$SessionCanceledStateCopyWithImpl<$Res>
    implements $SessionCanceledStateCopyWith<$Res> {
  _$SessionCanceledStateCopyWithImpl(this._self, this._then);

  final SessionCanceledState _self;
  final $Res Function(SessionCanceledState) _then;

/// Create a copy of SessionState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? session = null,}) {
  return _then(SessionCanceledState(
session: null == session ? _self.session : session // ignore: cast_nullable_to_non_nullable
as Session,
  ));
}

/// Create a copy of SessionState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SessionCopyWith<$Res> get session {
  
  return $SessionCopyWith<$Res>(_self.session, (value) {
    return _then(_self.copyWith(session: value));
  });
}
}

/// @nodoc


class SessionFinishedState implements SessionState {
  const SessionFinishedState({required this.session});
  

 final  Session session;

/// Create a copy of SessionState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SessionFinishedStateCopyWith<SessionFinishedState> get copyWith => _$SessionFinishedStateCopyWithImpl<SessionFinishedState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SessionFinishedState&&(identical(other.session, session) || other.session == session));
}


@override
int get hashCode => Object.hash(runtimeType,session);

@override
String toString() {
  return 'SessionState.finished(session: $session)';
}


}

/// @nodoc
abstract mixin class $SessionFinishedStateCopyWith<$Res> implements $SessionStateCopyWith<$Res> {
  factory $SessionFinishedStateCopyWith(SessionFinishedState value, $Res Function(SessionFinishedState) _then) = _$SessionFinishedStateCopyWithImpl;
@useResult
$Res call({
 Session session
});


$SessionCopyWith<$Res> get session;

}
/// @nodoc
class _$SessionFinishedStateCopyWithImpl<$Res>
    implements $SessionFinishedStateCopyWith<$Res> {
  _$SessionFinishedStateCopyWithImpl(this._self, this._then);

  final SessionFinishedState _self;
  final $Res Function(SessionFinishedState) _then;

/// Create a copy of SessionState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? session = null,}) {
  return _then(SessionFinishedState(
session: null == session ? _self.session : session // ignore: cast_nullable_to_non_nullable
as Session,
  ));
}

/// Create a copy of SessionState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SessionCopyWith<$Res> get session {
  
  return $SessionCopyWith<$Res>(_self.session, (value) {
    return _then(_self.copyWith(session: value));
  });
}
}

/// @nodoc


class SessionErrorState implements SessionState {
  const SessionErrorState({required this.error, required this.sessionId});
  

 final  AppError error;
 final  String sessionId;

/// Create a copy of SessionState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SessionErrorStateCopyWith<SessionErrorState> get copyWith => _$SessionErrorStateCopyWithImpl<SessionErrorState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SessionErrorState&&(identical(other.error, error) || other.error == error)&&(identical(other.sessionId, sessionId) || other.sessionId == sessionId));
}


@override
int get hashCode => Object.hash(runtimeType,error,sessionId);

@override
String toString() {
  return 'SessionState.error(error: $error, sessionId: $sessionId)';
}


}

/// @nodoc
abstract mixin class $SessionErrorStateCopyWith<$Res> implements $SessionStateCopyWith<$Res> {
  factory $SessionErrorStateCopyWith(SessionErrorState value, $Res Function(SessionErrorState) _then) = _$SessionErrorStateCopyWithImpl;
@useResult
$Res call({
 AppError error, String sessionId
});


$AppErrorCopyWith<$Res> get error;

}
/// @nodoc
class _$SessionErrorStateCopyWithImpl<$Res>
    implements $SessionErrorStateCopyWith<$Res> {
  _$SessionErrorStateCopyWithImpl(this._self, this._then);

  final SessionErrorState _self;
  final $Res Function(SessionErrorState) _then;

/// Create a copy of SessionState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,Object? sessionId = null,}) {
  return _then(SessionErrorState(
error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as AppError,sessionId: null == sessionId ? _self.sessionId : sessionId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of SessionState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AppErrorCopyWith<$Res> get error {
  
  return $AppErrorCopyWith<$Res>(_self.error, (value) {
    return _then(_self.copyWith(error: value));
  });
}
}

/// @nodoc


class SessionLeftState implements SessionState {
  const SessionLeftState({required this.sessionId});
  

 final  String sessionId;

/// Create a copy of SessionState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SessionLeftStateCopyWith<SessionLeftState> get copyWith => _$SessionLeftStateCopyWithImpl<SessionLeftState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SessionLeftState&&(identical(other.sessionId, sessionId) || other.sessionId == sessionId));
}


@override
int get hashCode => Object.hash(runtimeType,sessionId);

@override
String toString() {
  return 'SessionState.leftSession(sessionId: $sessionId)';
}


}

/// @nodoc
abstract mixin class $SessionLeftStateCopyWith<$Res> implements $SessionStateCopyWith<$Res> {
  factory $SessionLeftStateCopyWith(SessionLeftState value, $Res Function(SessionLeftState) _then) = _$SessionLeftStateCopyWithImpl;
@useResult
$Res call({
 String sessionId
});




}
/// @nodoc
class _$SessionLeftStateCopyWithImpl<$Res>
    implements $SessionLeftStateCopyWith<$Res> {
  _$SessionLeftStateCopyWithImpl(this._self, this._then);

  final SessionLeftState _self;
  final $Res Function(SessionLeftState) _then;

/// Create a copy of SessionState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? sessionId = null,}) {
  return _then(SessionLeftState(
sessionId: null == sessionId ? _self.sessionId : sessionId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
