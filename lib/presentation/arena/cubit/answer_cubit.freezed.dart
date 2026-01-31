// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'answer_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AnswerState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AnswerState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AnswerState()';
}


}

/// @nodoc
class $AnswerStateCopyWith<$Res>  {
$AnswerStateCopyWith(AnswerState _, $Res Function(AnswerState) __);
}


/// Adds pattern-matching-related methods to [AnswerState].
extension AnswerStatePatterns on AnswerState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( AnswerInitialState value)?  initial,TResult Function( AnswerSelectedState value)?  selected,TResult Function( AnswerSubmittingState value)?  submitting,TResult Function( AnswerSubmittedState value)?  submitted,TResult Function( AnswerErrorState value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case AnswerInitialState() when initial != null:
return initial(_that);case AnswerSelectedState() when selected != null:
return selected(_that);case AnswerSubmittingState() when submitting != null:
return submitting(_that);case AnswerSubmittedState() when submitted != null:
return submitted(_that);case AnswerErrorState() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( AnswerInitialState value)  initial,required TResult Function( AnswerSelectedState value)  selected,required TResult Function( AnswerSubmittingState value)  submitting,required TResult Function( AnswerSubmittedState value)  submitted,required TResult Function( AnswerErrorState value)  error,}){
final _that = this;
switch (_that) {
case AnswerInitialState():
return initial(_that);case AnswerSelectedState():
return selected(_that);case AnswerSubmittingState():
return submitting(_that);case AnswerSubmittedState():
return submitted(_that);case AnswerErrorState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( AnswerInitialState value)?  initial,TResult? Function( AnswerSelectedState value)?  selected,TResult? Function( AnswerSubmittingState value)?  submitting,TResult? Function( AnswerSubmittedState value)?  submitted,TResult? Function( AnswerErrorState value)?  error,}){
final _that = this;
switch (_that) {
case AnswerInitialState() when initial != null:
return initial(_that);case AnswerSelectedState() when selected != null:
return selected(_that);case AnswerSubmittingState() when submitting != null:
return submitting(_that);case AnswerSubmittedState() when submitted != null:
return submitted(_that);case AnswerErrorState() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function( int selectedOptionIndex,  String questionId)?  selected,TResult Function()?  submitting,TResult Function( int selectedOptionIndex,  int correctOptionIndex,  bool isCorrect,  int pointsEarned,  String questionId)?  submitted,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case AnswerInitialState() when initial != null:
return initial();case AnswerSelectedState() when selected != null:
return selected(_that.selectedOptionIndex,_that.questionId);case AnswerSubmittingState() when submitting != null:
return submitting();case AnswerSubmittedState() when submitted != null:
return submitted(_that.selectedOptionIndex,_that.correctOptionIndex,_that.isCorrect,_that.pointsEarned,_that.questionId);case AnswerErrorState() when error != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function( int selectedOptionIndex,  String questionId)  selected,required TResult Function()  submitting,required TResult Function( int selectedOptionIndex,  int correctOptionIndex,  bool isCorrect,  int pointsEarned,  String questionId)  submitted,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case AnswerInitialState():
return initial();case AnswerSelectedState():
return selected(_that.selectedOptionIndex,_that.questionId);case AnswerSubmittingState():
return submitting();case AnswerSubmittedState():
return submitted(_that.selectedOptionIndex,_that.correctOptionIndex,_that.isCorrect,_that.pointsEarned,_that.questionId);case AnswerErrorState():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function( int selectedOptionIndex,  String questionId)?  selected,TResult? Function()?  submitting,TResult? Function( int selectedOptionIndex,  int correctOptionIndex,  bool isCorrect,  int pointsEarned,  String questionId)?  submitted,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case AnswerInitialState() when initial != null:
return initial();case AnswerSelectedState() when selected != null:
return selected(_that.selectedOptionIndex,_that.questionId);case AnswerSubmittingState() when submitting != null:
return submitting();case AnswerSubmittedState() when submitted != null:
return submitted(_that.selectedOptionIndex,_that.correctOptionIndex,_that.isCorrect,_that.pointsEarned,_that.questionId);case AnswerErrorState() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class AnswerInitialState implements AnswerState {
  const AnswerInitialState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AnswerInitialState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AnswerState.initial()';
}


}




/// @nodoc


class AnswerSelectedState implements AnswerState {
  const AnswerSelectedState({required this.selectedOptionIndex, required this.questionId});
  

 final  int selectedOptionIndex;
 final  String questionId;

/// Create a copy of AnswerState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AnswerSelectedStateCopyWith<AnswerSelectedState> get copyWith => _$AnswerSelectedStateCopyWithImpl<AnswerSelectedState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AnswerSelectedState&&(identical(other.selectedOptionIndex, selectedOptionIndex) || other.selectedOptionIndex == selectedOptionIndex)&&(identical(other.questionId, questionId) || other.questionId == questionId));
}


@override
int get hashCode => Object.hash(runtimeType,selectedOptionIndex,questionId);

@override
String toString() {
  return 'AnswerState.selected(selectedOptionIndex: $selectedOptionIndex, questionId: $questionId)';
}


}

/// @nodoc
abstract mixin class $AnswerSelectedStateCopyWith<$Res> implements $AnswerStateCopyWith<$Res> {
  factory $AnswerSelectedStateCopyWith(AnswerSelectedState value, $Res Function(AnswerSelectedState) _then) = _$AnswerSelectedStateCopyWithImpl;
@useResult
$Res call({
 int selectedOptionIndex, String questionId
});




}
/// @nodoc
class _$AnswerSelectedStateCopyWithImpl<$Res>
    implements $AnswerSelectedStateCopyWith<$Res> {
  _$AnswerSelectedStateCopyWithImpl(this._self, this._then);

  final AnswerSelectedState _self;
  final $Res Function(AnswerSelectedState) _then;

/// Create a copy of AnswerState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? selectedOptionIndex = null,Object? questionId = null,}) {
  return _then(AnswerSelectedState(
selectedOptionIndex: null == selectedOptionIndex ? _self.selectedOptionIndex : selectedOptionIndex // ignore: cast_nullable_to_non_nullable
as int,questionId: null == questionId ? _self.questionId : questionId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class AnswerSubmittingState implements AnswerState {
  const AnswerSubmittingState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AnswerSubmittingState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AnswerState.submitting()';
}


}




/// @nodoc


class AnswerSubmittedState implements AnswerState {
  const AnswerSubmittedState({required this.selectedOptionIndex, required this.correctOptionIndex, required this.isCorrect, required this.pointsEarned, required this.questionId});
  

 final  int selectedOptionIndex;
 final  int correctOptionIndex;
 final  bool isCorrect;
 final  int pointsEarned;
 final  String questionId;

/// Create a copy of AnswerState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AnswerSubmittedStateCopyWith<AnswerSubmittedState> get copyWith => _$AnswerSubmittedStateCopyWithImpl<AnswerSubmittedState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AnswerSubmittedState&&(identical(other.selectedOptionIndex, selectedOptionIndex) || other.selectedOptionIndex == selectedOptionIndex)&&(identical(other.correctOptionIndex, correctOptionIndex) || other.correctOptionIndex == correctOptionIndex)&&(identical(other.isCorrect, isCorrect) || other.isCorrect == isCorrect)&&(identical(other.pointsEarned, pointsEarned) || other.pointsEarned == pointsEarned)&&(identical(other.questionId, questionId) || other.questionId == questionId));
}


@override
int get hashCode => Object.hash(runtimeType,selectedOptionIndex,correctOptionIndex,isCorrect,pointsEarned,questionId);

@override
String toString() {
  return 'AnswerState.submitted(selectedOptionIndex: $selectedOptionIndex, correctOptionIndex: $correctOptionIndex, isCorrect: $isCorrect, pointsEarned: $pointsEarned, questionId: $questionId)';
}


}

/// @nodoc
abstract mixin class $AnswerSubmittedStateCopyWith<$Res> implements $AnswerStateCopyWith<$Res> {
  factory $AnswerSubmittedStateCopyWith(AnswerSubmittedState value, $Res Function(AnswerSubmittedState) _then) = _$AnswerSubmittedStateCopyWithImpl;
@useResult
$Res call({
 int selectedOptionIndex, int correctOptionIndex, bool isCorrect, int pointsEarned, String questionId
});




}
/// @nodoc
class _$AnswerSubmittedStateCopyWithImpl<$Res>
    implements $AnswerSubmittedStateCopyWith<$Res> {
  _$AnswerSubmittedStateCopyWithImpl(this._self, this._then);

  final AnswerSubmittedState _self;
  final $Res Function(AnswerSubmittedState) _then;

/// Create a copy of AnswerState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? selectedOptionIndex = null,Object? correctOptionIndex = null,Object? isCorrect = null,Object? pointsEarned = null,Object? questionId = null,}) {
  return _then(AnswerSubmittedState(
selectedOptionIndex: null == selectedOptionIndex ? _self.selectedOptionIndex : selectedOptionIndex // ignore: cast_nullable_to_non_nullable
as int,correctOptionIndex: null == correctOptionIndex ? _self.correctOptionIndex : correctOptionIndex // ignore: cast_nullable_to_non_nullable
as int,isCorrect: null == isCorrect ? _self.isCorrect : isCorrect // ignore: cast_nullable_to_non_nullable
as bool,pointsEarned: null == pointsEarned ? _self.pointsEarned : pointsEarned // ignore: cast_nullable_to_non_nullable
as int,questionId: null == questionId ? _self.questionId : questionId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class AnswerErrorState implements AnswerState {
  const AnswerErrorState({required this.message});
  

 final  String message;

/// Create a copy of AnswerState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AnswerErrorStateCopyWith<AnswerErrorState> get copyWith => _$AnswerErrorStateCopyWithImpl<AnswerErrorState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AnswerErrorState&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'AnswerState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $AnswerErrorStateCopyWith<$Res> implements $AnswerStateCopyWith<$Res> {
  factory $AnswerErrorStateCopyWith(AnswerErrorState value, $Res Function(AnswerErrorState) _then) = _$AnswerErrorStateCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$AnswerErrorStateCopyWithImpl<$Res>
    implements $AnswerErrorStateCopyWith<$Res> {
  _$AnswerErrorStateCopyWithImpl(this._self, this._then);

  final AnswerErrorState _self;
  final $Res Function(AnswerErrorState) _then;

/// Create a copy of AnswerState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(AnswerErrorState(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
