// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'question_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$QuestionEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QuestionEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'QuestionEvent()';
}


}

/// @nodoc
class $QuestionEventCopyWith<$Res>  {
$QuestionEventCopyWith(QuestionEvent _, $Res Function(QuestionEvent) __);
}


/// Adds pattern-matching-related methods to [QuestionEvent].
extension QuestionEventPatterns on QuestionEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( LoadQuestionsEvent value)?  loadQuestions,TResult Function( NextQuestionEvent value)?  nextQuestion,TResult Function( PreviousQuestionEvent value)?  previousQuestion,TResult Function( GoToQuestionEvent value)?  goToQuestion,required TResult orElse(),}){
final _that = this;
switch (_that) {
case LoadQuestionsEvent() when loadQuestions != null:
return loadQuestions(_that);case NextQuestionEvent() when nextQuestion != null:
return nextQuestion(_that);case PreviousQuestionEvent() when previousQuestion != null:
return previousQuestion(_that);case GoToQuestionEvent() when goToQuestion != null:
return goToQuestion(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( LoadQuestionsEvent value)  loadQuestions,required TResult Function( NextQuestionEvent value)  nextQuestion,required TResult Function( PreviousQuestionEvent value)  previousQuestion,required TResult Function( GoToQuestionEvent value)  goToQuestion,}){
final _that = this;
switch (_that) {
case LoadQuestionsEvent():
return loadQuestions(_that);case NextQuestionEvent():
return nextQuestion(_that);case PreviousQuestionEvent():
return previousQuestion(_that);case GoToQuestionEvent():
return goToQuestion(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( LoadQuestionsEvent value)?  loadQuestions,TResult? Function( NextQuestionEvent value)?  nextQuestion,TResult? Function( PreviousQuestionEvent value)?  previousQuestion,TResult? Function( GoToQuestionEvent value)?  goToQuestion,}){
final _that = this;
switch (_that) {
case LoadQuestionsEvent() when loadQuestions != null:
return loadQuestions(_that);case NextQuestionEvent() when nextQuestion != null:
return nextQuestion(_that);case PreviousQuestionEvent() when previousQuestion != null:
return previousQuestion(_that);case GoToQuestionEvent() when goToQuestion != null:
return goToQuestion(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String quizId,  Set<String>? answeredQuestionIds)?  loadQuestions,TResult Function( Set<String>? answeredQuestionIds)?  nextQuestion,TResult Function()?  previousQuestion,TResult Function( int questionIndex)?  goToQuestion,required TResult orElse(),}) {final _that = this;
switch (_that) {
case LoadQuestionsEvent() when loadQuestions != null:
return loadQuestions(_that.quizId,_that.answeredQuestionIds);case NextQuestionEvent() when nextQuestion != null:
return nextQuestion(_that.answeredQuestionIds);case PreviousQuestionEvent() when previousQuestion != null:
return previousQuestion();case GoToQuestionEvent() when goToQuestion != null:
return goToQuestion(_that.questionIndex);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String quizId,  Set<String>? answeredQuestionIds)  loadQuestions,required TResult Function( Set<String>? answeredQuestionIds)  nextQuestion,required TResult Function()  previousQuestion,required TResult Function( int questionIndex)  goToQuestion,}) {final _that = this;
switch (_that) {
case LoadQuestionsEvent():
return loadQuestions(_that.quizId,_that.answeredQuestionIds);case NextQuestionEvent():
return nextQuestion(_that.answeredQuestionIds);case PreviousQuestionEvent():
return previousQuestion();case GoToQuestionEvent():
return goToQuestion(_that.questionIndex);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String quizId,  Set<String>? answeredQuestionIds)?  loadQuestions,TResult? Function( Set<String>? answeredQuestionIds)?  nextQuestion,TResult? Function()?  previousQuestion,TResult? Function( int questionIndex)?  goToQuestion,}) {final _that = this;
switch (_that) {
case LoadQuestionsEvent() when loadQuestions != null:
return loadQuestions(_that.quizId,_that.answeredQuestionIds);case NextQuestionEvent() when nextQuestion != null:
return nextQuestion(_that.answeredQuestionIds);case PreviousQuestionEvent() when previousQuestion != null:
return previousQuestion();case GoToQuestionEvent() when goToQuestion != null:
return goToQuestion(_that.questionIndex);case _:
  return null;

}
}

}

/// @nodoc


class LoadQuestionsEvent implements QuestionEvent {
  const LoadQuestionsEvent({required this.quizId, final  Set<String>? answeredQuestionIds}): _answeredQuestionIds = answeredQuestionIds;
  

 final  String quizId;
 final  Set<String>? _answeredQuestionIds;
 Set<String>? get answeredQuestionIds {
  final value = _answeredQuestionIds;
  if (value == null) return null;
  if (_answeredQuestionIds is EqualUnmodifiableSetView) return _answeredQuestionIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableSetView(value);
}


/// Create a copy of QuestionEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadQuestionsEventCopyWith<LoadQuestionsEvent> get copyWith => _$LoadQuestionsEventCopyWithImpl<LoadQuestionsEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadQuestionsEvent&&(identical(other.quizId, quizId) || other.quizId == quizId)&&const DeepCollectionEquality().equals(other._answeredQuestionIds, _answeredQuestionIds));
}


@override
int get hashCode => Object.hash(runtimeType,quizId,const DeepCollectionEquality().hash(_answeredQuestionIds));

@override
String toString() {
  return 'QuestionEvent.loadQuestions(quizId: $quizId, answeredQuestionIds: $answeredQuestionIds)';
}


}

/// @nodoc
abstract mixin class $LoadQuestionsEventCopyWith<$Res> implements $QuestionEventCopyWith<$Res> {
  factory $LoadQuestionsEventCopyWith(LoadQuestionsEvent value, $Res Function(LoadQuestionsEvent) _then) = _$LoadQuestionsEventCopyWithImpl;
@useResult
$Res call({
 String quizId, Set<String>? answeredQuestionIds
});




}
/// @nodoc
class _$LoadQuestionsEventCopyWithImpl<$Res>
    implements $LoadQuestionsEventCopyWith<$Res> {
  _$LoadQuestionsEventCopyWithImpl(this._self, this._then);

  final LoadQuestionsEvent _self;
  final $Res Function(LoadQuestionsEvent) _then;

/// Create a copy of QuestionEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? quizId = null,Object? answeredQuestionIds = freezed,}) {
  return _then(LoadQuestionsEvent(
quizId: null == quizId ? _self.quizId : quizId // ignore: cast_nullable_to_non_nullable
as String,answeredQuestionIds: freezed == answeredQuestionIds ? _self._answeredQuestionIds : answeredQuestionIds // ignore: cast_nullable_to_non_nullable
as Set<String>?,
  ));
}


}

/// @nodoc


class NextQuestionEvent implements QuestionEvent {
  const NextQuestionEvent({final  Set<String>? answeredQuestionIds}): _answeredQuestionIds = answeredQuestionIds;
  

 final  Set<String>? _answeredQuestionIds;
 Set<String>? get answeredQuestionIds {
  final value = _answeredQuestionIds;
  if (value == null) return null;
  if (_answeredQuestionIds is EqualUnmodifiableSetView) return _answeredQuestionIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableSetView(value);
}


/// Create a copy of QuestionEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NextQuestionEventCopyWith<NextQuestionEvent> get copyWith => _$NextQuestionEventCopyWithImpl<NextQuestionEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NextQuestionEvent&&const DeepCollectionEquality().equals(other._answeredQuestionIds, _answeredQuestionIds));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_answeredQuestionIds));

@override
String toString() {
  return 'QuestionEvent.nextQuestion(answeredQuestionIds: $answeredQuestionIds)';
}


}

/// @nodoc
abstract mixin class $NextQuestionEventCopyWith<$Res> implements $QuestionEventCopyWith<$Res> {
  factory $NextQuestionEventCopyWith(NextQuestionEvent value, $Res Function(NextQuestionEvent) _then) = _$NextQuestionEventCopyWithImpl;
@useResult
$Res call({
 Set<String>? answeredQuestionIds
});




}
/// @nodoc
class _$NextQuestionEventCopyWithImpl<$Res>
    implements $NextQuestionEventCopyWith<$Res> {
  _$NextQuestionEventCopyWithImpl(this._self, this._then);

  final NextQuestionEvent _self;
  final $Res Function(NextQuestionEvent) _then;

/// Create a copy of QuestionEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? answeredQuestionIds = freezed,}) {
  return _then(NextQuestionEvent(
answeredQuestionIds: freezed == answeredQuestionIds ? _self._answeredQuestionIds : answeredQuestionIds // ignore: cast_nullable_to_non_nullable
as Set<String>?,
  ));
}


}

/// @nodoc


class PreviousQuestionEvent implements QuestionEvent {
  const PreviousQuestionEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PreviousQuestionEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'QuestionEvent.previousQuestion()';
}


}




/// @nodoc


class GoToQuestionEvent implements QuestionEvent {
  const GoToQuestionEvent({required this.questionIndex});
  

 final  int questionIndex;

/// Create a copy of QuestionEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GoToQuestionEventCopyWith<GoToQuestionEvent> get copyWith => _$GoToQuestionEventCopyWithImpl<GoToQuestionEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GoToQuestionEvent&&(identical(other.questionIndex, questionIndex) || other.questionIndex == questionIndex));
}


@override
int get hashCode => Object.hash(runtimeType,questionIndex);

@override
String toString() {
  return 'QuestionEvent.goToQuestion(questionIndex: $questionIndex)';
}


}

/// @nodoc
abstract mixin class $GoToQuestionEventCopyWith<$Res> implements $QuestionEventCopyWith<$Res> {
  factory $GoToQuestionEventCopyWith(GoToQuestionEvent value, $Res Function(GoToQuestionEvent) _then) = _$GoToQuestionEventCopyWithImpl;
@useResult
$Res call({
 int questionIndex
});




}
/// @nodoc
class _$GoToQuestionEventCopyWithImpl<$Res>
    implements $GoToQuestionEventCopyWith<$Res> {
  _$GoToQuestionEventCopyWithImpl(this._self, this._then);

  final GoToQuestionEvent _self;
  final $Res Function(GoToQuestionEvent) _then;

/// Create a copy of QuestionEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? questionIndex = null,}) {
  return _then(GoToQuestionEvent(
questionIndex: null == questionIndex ? _self.questionIndex : questionIndex // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$QuestionState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QuestionState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'QuestionState()';
}


}

/// @nodoc
class $QuestionStateCopyWith<$Res>  {
$QuestionStateCopyWith(QuestionState _, $Res Function(QuestionState) __);
}


/// Adds pattern-matching-related methods to [QuestionState].
extension QuestionStatePatterns on QuestionState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( QuestionInitialState value)?  initial,TResult Function( QuestionLoadingState value)?  loading,TResult Function( QuestionLoadedState value)?  loaded,TResult Function( QuestionErrorState value)?  error,TResult Function( QuestionEmptyState value)?  empty,required TResult orElse(),}){
final _that = this;
switch (_that) {
case QuestionInitialState() when initial != null:
return initial(_that);case QuestionLoadingState() when loading != null:
return loading(_that);case QuestionLoadedState() when loaded != null:
return loaded(_that);case QuestionErrorState() when error != null:
return error(_that);case QuestionEmptyState() when empty != null:
return empty(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( QuestionInitialState value)  initial,required TResult Function( QuestionLoadingState value)  loading,required TResult Function( QuestionLoadedState value)  loaded,required TResult Function( QuestionErrorState value)  error,required TResult Function( QuestionEmptyState value)  empty,}){
final _that = this;
switch (_that) {
case QuestionInitialState():
return initial(_that);case QuestionLoadingState():
return loading(_that);case QuestionLoadedState():
return loaded(_that);case QuestionErrorState():
return error(_that);case QuestionEmptyState():
return empty(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( QuestionInitialState value)?  initial,TResult? Function( QuestionLoadingState value)?  loading,TResult? Function( QuestionLoadedState value)?  loaded,TResult? Function( QuestionErrorState value)?  error,TResult? Function( QuestionEmptyState value)?  empty,}){
final _that = this;
switch (_that) {
case QuestionInitialState() when initial != null:
return initial(_that);case QuestionLoadingState() when loading != null:
return loading(_that);case QuestionLoadedState() when loaded != null:
return loaded(_that);case QuestionErrorState() when error != null:
return error(_that);case QuestionEmptyState() when empty != null:
return empty(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( List<Question> questions,  int currentQuestionIndex,  Question currentQuestion)?  loaded,TResult Function( AppError error)?  error,TResult Function()?  empty,required TResult orElse(),}) {final _that = this;
switch (_that) {
case QuestionInitialState() when initial != null:
return initial();case QuestionLoadingState() when loading != null:
return loading();case QuestionLoadedState() when loaded != null:
return loaded(_that.questions,_that.currentQuestionIndex,_that.currentQuestion);case QuestionErrorState() when error != null:
return error(_that.error);case QuestionEmptyState() when empty != null:
return empty();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( List<Question> questions,  int currentQuestionIndex,  Question currentQuestion)  loaded,required TResult Function( AppError error)  error,required TResult Function()  empty,}) {final _that = this;
switch (_that) {
case QuestionInitialState():
return initial();case QuestionLoadingState():
return loading();case QuestionLoadedState():
return loaded(_that.questions,_that.currentQuestionIndex,_that.currentQuestion);case QuestionErrorState():
return error(_that.error);case QuestionEmptyState():
return empty();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( List<Question> questions,  int currentQuestionIndex,  Question currentQuestion)?  loaded,TResult? Function( AppError error)?  error,TResult? Function()?  empty,}) {final _that = this;
switch (_that) {
case QuestionInitialState() when initial != null:
return initial();case QuestionLoadingState() when loading != null:
return loading();case QuestionLoadedState() when loaded != null:
return loaded(_that.questions,_that.currentQuestionIndex,_that.currentQuestion);case QuestionErrorState() when error != null:
return error(_that.error);case QuestionEmptyState() when empty != null:
return empty();case _:
  return null;

}
}

}

/// @nodoc


class QuestionInitialState implements QuestionState {
  const QuestionInitialState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QuestionInitialState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'QuestionState.initial()';
}


}




/// @nodoc


class QuestionLoadingState implements QuestionState {
  const QuestionLoadingState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QuestionLoadingState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'QuestionState.loading()';
}


}




/// @nodoc


class QuestionLoadedState implements QuestionState {
  const QuestionLoadedState({required final  List<Question> questions, required this.currentQuestionIndex, required this.currentQuestion}): _questions = questions;
  

 final  List<Question> _questions;
 List<Question> get questions {
  if (_questions is EqualUnmodifiableListView) return _questions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_questions);
}

 final  int currentQuestionIndex;
 final  Question currentQuestion;

/// Create a copy of QuestionState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$QuestionLoadedStateCopyWith<QuestionLoadedState> get copyWith => _$QuestionLoadedStateCopyWithImpl<QuestionLoadedState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QuestionLoadedState&&const DeepCollectionEquality().equals(other._questions, _questions)&&(identical(other.currentQuestionIndex, currentQuestionIndex) || other.currentQuestionIndex == currentQuestionIndex)&&(identical(other.currentQuestion, currentQuestion) || other.currentQuestion == currentQuestion));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_questions),currentQuestionIndex,currentQuestion);

@override
String toString() {
  return 'QuestionState.loaded(questions: $questions, currentQuestionIndex: $currentQuestionIndex, currentQuestion: $currentQuestion)';
}


}

/// @nodoc
abstract mixin class $QuestionLoadedStateCopyWith<$Res> implements $QuestionStateCopyWith<$Res> {
  factory $QuestionLoadedStateCopyWith(QuestionLoadedState value, $Res Function(QuestionLoadedState) _then) = _$QuestionLoadedStateCopyWithImpl;
@useResult
$Res call({
 List<Question> questions, int currentQuestionIndex, Question currentQuestion
});


$QuestionCopyWith<$Res> get currentQuestion;

}
/// @nodoc
class _$QuestionLoadedStateCopyWithImpl<$Res>
    implements $QuestionLoadedStateCopyWith<$Res> {
  _$QuestionLoadedStateCopyWithImpl(this._self, this._then);

  final QuestionLoadedState _self;
  final $Res Function(QuestionLoadedState) _then;

/// Create a copy of QuestionState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? questions = null,Object? currentQuestionIndex = null,Object? currentQuestion = null,}) {
  return _then(QuestionLoadedState(
questions: null == questions ? _self._questions : questions // ignore: cast_nullable_to_non_nullable
as List<Question>,currentQuestionIndex: null == currentQuestionIndex ? _self.currentQuestionIndex : currentQuestionIndex // ignore: cast_nullable_to_non_nullable
as int,currentQuestion: null == currentQuestion ? _self.currentQuestion : currentQuestion // ignore: cast_nullable_to_non_nullable
as Question,
  ));
}

/// Create a copy of QuestionState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$QuestionCopyWith<$Res> get currentQuestion {
  
  return $QuestionCopyWith<$Res>(_self.currentQuestion, (value) {
    return _then(_self.copyWith(currentQuestion: value));
  });
}
}

/// @nodoc


class QuestionErrorState implements QuestionState {
  const QuestionErrorState({required this.error});
  

 final  AppError error;

/// Create a copy of QuestionState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$QuestionErrorStateCopyWith<QuestionErrorState> get copyWith => _$QuestionErrorStateCopyWithImpl<QuestionErrorState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QuestionErrorState&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'QuestionState.error(error: $error)';
}


}

/// @nodoc
abstract mixin class $QuestionErrorStateCopyWith<$Res> implements $QuestionStateCopyWith<$Res> {
  factory $QuestionErrorStateCopyWith(QuestionErrorState value, $Res Function(QuestionErrorState) _then) = _$QuestionErrorStateCopyWithImpl;
@useResult
$Res call({
 AppError error
});


$AppErrorCopyWith<$Res> get error;

}
/// @nodoc
class _$QuestionErrorStateCopyWithImpl<$Res>
    implements $QuestionErrorStateCopyWith<$Res> {
  _$QuestionErrorStateCopyWithImpl(this._self, this._then);

  final QuestionErrorState _self;
  final $Res Function(QuestionErrorState) _then;

/// Create a copy of QuestionState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(QuestionErrorState(
error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as AppError,
  ));
}

/// Create a copy of QuestionState
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


class QuestionEmptyState implements QuestionState {
  const QuestionEmptyState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QuestionEmptyState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'QuestionState.empty()';
}


}




// dart format on
