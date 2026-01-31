// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'answer_history_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AnswerHistoryEvent {

 String get sessionId; String get userId;
/// Create a copy of AnswerHistoryEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AnswerHistoryEventCopyWith<AnswerHistoryEvent> get copyWith => _$AnswerHistoryEventCopyWithImpl<AnswerHistoryEvent>(this as AnswerHistoryEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AnswerHistoryEvent&&(identical(other.sessionId, sessionId) || other.sessionId == sessionId)&&(identical(other.userId, userId) || other.userId == userId));
}


@override
int get hashCode => Object.hash(runtimeType,sessionId,userId);

@override
String toString() {
  return 'AnswerHistoryEvent(sessionId: $sessionId, userId: $userId)';
}


}

/// @nodoc
abstract mixin class $AnswerHistoryEventCopyWith<$Res>  {
  factory $AnswerHistoryEventCopyWith(AnswerHistoryEvent value, $Res Function(AnswerHistoryEvent) _then) = _$AnswerHistoryEventCopyWithImpl;
@useResult
$Res call({
 String sessionId, String userId
});




}
/// @nodoc
class _$AnswerHistoryEventCopyWithImpl<$Res>
    implements $AnswerHistoryEventCopyWith<$Res> {
  _$AnswerHistoryEventCopyWithImpl(this._self, this._then);

  final AnswerHistoryEvent _self;
  final $Res Function(AnswerHistoryEvent) _then;

/// Create a copy of AnswerHistoryEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? sessionId = null,Object? userId = null,}) {
  return _then(_self.copyWith(
sessionId: null == sessionId ? _self.sessionId : sessionId // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [AnswerHistoryEvent].
extension AnswerHistoryEventPatterns on AnswerHistoryEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( WatchAnswersEvent value)?  watchAnswers,TResult Function( LoadAnswersEvent value)?  loadAnswers,required TResult orElse(),}){
final _that = this;
switch (_that) {
case WatchAnswersEvent() when watchAnswers != null:
return watchAnswers(_that);case LoadAnswersEvent() when loadAnswers != null:
return loadAnswers(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( WatchAnswersEvent value)  watchAnswers,required TResult Function( LoadAnswersEvent value)  loadAnswers,}){
final _that = this;
switch (_that) {
case WatchAnswersEvent():
return watchAnswers(_that);case LoadAnswersEvent():
return loadAnswers(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( WatchAnswersEvent value)?  watchAnswers,TResult? Function( LoadAnswersEvent value)?  loadAnswers,}){
final _that = this;
switch (_that) {
case WatchAnswersEvent() when watchAnswers != null:
return watchAnswers(_that);case LoadAnswersEvent() when loadAnswers != null:
return loadAnswers(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String sessionId,  String userId)?  watchAnswers,TResult Function( String sessionId,  String userId)?  loadAnswers,required TResult orElse(),}) {final _that = this;
switch (_that) {
case WatchAnswersEvent() when watchAnswers != null:
return watchAnswers(_that.sessionId,_that.userId);case LoadAnswersEvent() when loadAnswers != null:
return loadAnswers(_that.sessionId,_that.userId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String sessionId,  String userId)  watchAnswers,required TResult Function( String sessionId,  String userId)  loadAnswers,}) {final _that = this;
switch (_that) {
case WatchAnswersEvent():
return watchAnswers(_that.sessionId,_that.userId);case LoadAnswersEvent():
return loadAnswers(_that.sessionId,_that.userId);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String sessionId,  String userId)?  watchAnswers,TResult? Function( String sessionId,  String userId)?  loadAnswers,}) {final _that = this;
switch (_that) {
case WatchAnswersEvent() when watchAnswers != null:
return watchAnswers(_that.sessionId,_that.userId);case LoadAnswersEvent() when loadAnswers != null:
return loadAnswers(_that.sessionId,_that.userId);case _:
  return null;

}
}

}

/// @nodoc


class WatchAnswersEvent implements AnswerHistoryEvent {
  const WatchAnswersEvent({required this.sessionId, required this.userId});
  

@override final  String sessionId;
@override final  String userId;

/// Create a copy of AnswerHistoryEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WatchAnswersEventCopyWith<WatchAnswersEvent> get copyWith => _$WatchAnswersEventCopyWithImpl<WatchAnswersEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WatchAnswersEvent&&(identical(other.sessionId, sessionId) || other.sessionId == sessionId)&&(identical(other.userId, userId) || other.userId == userId));
}


@override
int get hashCode => Object.hash(runtimeType,sessionId,userId);

@override
String toString() {
  return 'AnswerHistoryEvent.watchAnswers(sessionId: $sessionId, userId: $userId)';
}


}

/// @nodoc
abstract mixin class $WatchAnswersEventCopyWith<$Res> implements $AnswerHistoryEventCopyWith<$Res> {
  factory $WatchAnswersEventCopyWith(WatchAnswersEvent value, $Res Function(WatchAnswersEvent) _then) = _$WatchAnswersEventCopyWithImpl;
@override @useResult
$Res call({
 String sessionId, String userId
});




}
/// @nodoc
class _$WatchAnswersEventCopyWithImpl<$Res>
    implements $WatchAnswersEventCopyWith<$Res> {
  _$WatchAnswersEventCopyWithImpl(this._self, this._then);

  final WatchAnswersEvent _self;
  final $Res Function(WatchAnswersEvent) _then;

/// Create a copy of AnswerHistoryEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? sessionId = null,Object? userId = null,}) {
  return _then(WatchAnswersEvent(
sessionId: null == sessionId ? _self.sessionId : sessionId // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class LoadAnswersEvent implements AnswerHistoryEvent {
  const LoadAnswersEvent({required this.sessionId, required this.userId});
  

@override final  String sessionId;
@override final  String userId;

/// Create a copy of AnswerHistoryEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadAnswersEventCopyWith<LoadAnswersEvent> get copyWith => _$LoadAnswersEventCopyWithImpl<LoadAnswersEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadAnswersEvent&&(identical(other.sessionId, sessionId) || other.sessionId == sessionId)&&(identical(other.userId, userId) || other.userId == userId));
}


@override
int get hashCode => Object.hash(runtimeType,sessionId,userId);

@override
String toString() {
  return 'AnswerHistoryEvent.loadAnswers(sessionId: $sessionId, userId: $userId)';
}


}

/// @nodoc
abstract mixin class $LoadAnswersEventCopyWith<$Res> implements $AnswerHistoryEventCopyWith<$Res> {
  factory $LoadAnswersEventCopyWith(LoadAnswersEvent value, $Res Function(LoadAnswersEvent) _then) = _$LoadAnswersEventCopyWithImpl;
@override @useResult
$Res call({
 String sessionId, String userId
});




}
/// @nodoc
class _$LoadAnswersEventCopyWithImpl<$Res>
    implements $LoadAnswersEventCopyWith<$Res> {
  _$LoadAnswersEventCopyWithImpl(this._self, this._then);

  final LoadAnswersEvent _self;
  final $Res Function(LoadAnswersEvent) _then;

/// Create a copy of AnswerHistoryEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? sessionId = null,Object? userId = null,}) {
  return _then(LoadAnswersEvent(
sessionId: null == sessionId ? _self.sessionId : sessionId // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$AnswerHistoryState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AnswerHistoryState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AnswerHistoryState()';
}


}

/// @nodoc
class $AnswerHistoryStateCopyWith<$Res>  {
$AnswerHistoryStateCopyWith(AnswerHistoryState _, $Res Function(AnswerHistoryState) __);
}


/// Adds pattern-matching-related methods to [AnswerHistoryState].
extension AnswerHistoryStatePatterns on AnswerHistoryState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( AnswerHistoryInitialState value)?  initial,TResult Function( AnswerHistoryLoadingState value)?  loading,TResult Function( AnswerHistoryLoadedState value)?  loaded,TResult Function( AnswerHistoryErrorState value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case AnswerHistoryInitialState() when initial != null:
return initial(_that);case AnswerHistoryLoadingState() when loading != null:
return loading(_that);case AnswerHistoryLoadedState() when loaded != null:
return loaded(_that);case AnswerHistoryErrorState() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( AnswerHistoryInitialState value)  initial,required TResult Function( AnswerHistoryLoadingState value)  loading,required TResult Function( AnswerHistoryLoadedState value)  loaded,required TResult Function( AnswerHistoryErrorState value)  error,}){
final _that = this;
switch (_that) {
case AnswerHistoryInitialState():
return initial(_that);case AnswerHistoryLoadingState():
return loading(_that);case AnswerHistoryLoadedState():
return loaded(_that);case AnswerHistoryErrorState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( AnswerHistoryInitialState value)?  initial,TResult? Function( AnswerHistoryLoadingState value)?  loading,TResult? Function( AnswerHistoryLoadedState value)?  loaded,TResult? Function( AnswerHistoryErrorState value)?  error,}){
final _that = this;
switch (_that) {
case AnswerHistoryInitialState() when initial != null:
return initial(_that);case AnswerHistoryLoadingState() when loading != null:
return loading(_that);case AnswerHistoryLoadedState() when loaded != null:
return loaded(_that);case AnswerHistoryErrorState() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( List<Answer> answers,  Set<String> answeredQuestionIds)?  loaded,TResult Function( AppError error)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case AnswerHistoryInitialState() when initial != null:
return initial();case AnswerHistoryLoadingState() when loading != null:
return loading();case AnswerHistoryLoadedState() when loaded != null:
return loaded(_that.answers,_that.answeredQuestionIds);case AnswerHistoryErrorState() when error != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( List<Answer> answers,  Set<String> answeredQuestionIds)  loaded,required TResult Function( AppError error)  error,}) {final _that = this;
switch (_that) {
case AnswerHistoryInitialState():
return initial();case AnswerHistoryLoadingState():
return loading();case AnswerHistoryLoadedState():
return loaded(_that.answers,_that.answeredQuestionIds);case AnswerHistoryErrorState():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( List<Answer> answers,  Set<String> answeredQuestionIds)?  loaded,TResult? Function( AppError error)?  error,}) {final _that = this;
switch (_that) {
case AnswerHistoryInitialState() when initial != null:
return initial();case AnswerHistoryLoadingState() when loading != null:
return loading();case AnswerHistoryLoadedState() when loaded != null:
return loaded(_that.answers,_that.answeredQuestionIds);case AnswerHistoryErrorState() when error != null:
return error(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class AnswerHistoryInitialState implements AnswerHistoryState {
  const AnswerHistoryInitialState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AnswerHistoryInitialState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AnswerHistoryState.initial()';
}


}




/// @nodoc


class AnswerHistoryLoadingState implements AnswerHistoryState {
  const AnswerHistoryLoadingState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AnswerHistoryLoadingState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AnswerHistoryState.loading()';
}


}




/// @nodoc


class AnswerHistoryLoadedState implements AnswerHistoryState {
  const AnswerHistoryLoadedState({required final  List<Answer> answers, required final  Set<String> answeredQuestionIds}): _answers = answers,_answeredQuestionIds = answeredQuestionIds;
  

 final  List<Answer> _answers;
 List<Answer> get answers {
  if (_answers is EqualUnmodifiableListView) return _answers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_answers);
}

 final  Set<String> _answeredQuestionIds;
 Set<String> get answeredQuestionIds {
  if (_answeredQuestionIds is EqualUnmodifiableSetView) return _answeredQuestionIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableSetView(_answeredQuestionIds);
}


/// Create a copy of AnswerHistoryState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AnswerHistoryLoadedStateCopyWith<AnswerHistoryLoadedState> get copyWith => _$AnswerHistoryLoadedStateCopyWithImpl<AnswerHistoryLoadedState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AnswerHistoryLoadedState&&const DeepCollectionEquality().equals(other._answers, _answers)&&const DeepCollectionEquality().equals(other._answeredQuestionIds, _answeredQuestionIds));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_answers),const DeepCollectionEquality().hash(_answeredQuestionIds));

@override
String toString() {
  return 'AnswerHistoryState.loaded(answers: $answers, answeredQuestionIds: $answeredQuestionIds)';
}


}

/// @nodoc
abstract mixin class $AnswerHistoryLoadedStateCopyWith<$Res> implements $AnswerHistoryStateCopyWith<$Res> {
  factory $AnswerHistoryLoadedStateCopyWith(AnswerHistoryLoadedState value, $Res Function(AnswerHistoryLoadedState) _then) = _$AnswerHistoryLoadedStateCopyWithImpl;
@useResult
$Res call({
 List<Answer> answers, Set<String> answeredQuestionIds
});




}
/// @nodoc
class _$AnswerHistoryLoadedStateCopyWithImpl<$Res>
    implements $AnswerHistoryLoadedStateCopyWith<$Res> {
  _$AnswerHistoryLoadedStateCopyWithImpl(this._self, this._then);

  final AnswerHistoryLoadedState _self;
  final $Res Function(AnswerHistoryLoadedState) _then;

/// Create a copy of AnswerHistoryState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? answers = null,Object? answeredQuestionIds = null,}) {
  return _then(AnswerHistoryLoadedState(
answers: null == answers ? _self._answers : answers // ignore: cast_nullable_to_non_nullable
as List<Answer>,answeredQuestionIds: null == answeredQuestionIds ? _self._answeredQuestionIds : answeredQuestionIds // ignore: cast_nullable_to_non_nullable
as Set<String>,
  ));
}


}

/// @nodoc


class AnswerHistoryErrorState implements AnswerHistoryState {
  const AnswerHistoryErrorState({required this.error});
  

 final  AppError error;

/// Create a copy of AnswerHistoryState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AnswerHistoryErrorStateCopyWith<AnswerHistoryErrorState> get copyWith => _$AnswerHistoryErrorStateCopyWithImpl<AnswerHistoryErrorState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AnswerHistoryErrorState&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'AnswerHistoryState.error(error: $error)';
}


}

/// @nodoc
abstract mixin class $AnswerHistoryErrorStateCopyWith<$Res> implements $AnswerHistoryStateCopyWith<$Res> {
  factory $AnswerHistoryErrorStateCopyWith(AnswerHistoryErrorState value, $Res Function(AnswerHistoryErrorState) _then) = _$AnswerHistoryErrorStateCopyWithImpl;
@useResult
$Res call({
 AppError error
});


$AppErrorCopyWith<$Res> get error;

}
/// @nodoc
class _$AnswerHistoryErrorStateCopyWithImpl<$Res>
    implements $AnswerHistoryErrorStateCopyWith<$Res> {
  _$AnswerHistoryErrorStateCopyWithImpl(this._self, this._then);

  final AnswerHistoryErrorState _self;
  final $Res Function(AnswerHistoryErrorState) _then;

/// Create a copy of AnswerHistoryState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(AnswerHistoryErrorState(
error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as AppError,
  ));
}

/// Create a copy of AnswerHistoryState
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
