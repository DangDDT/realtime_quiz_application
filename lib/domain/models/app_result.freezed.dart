// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AppResult<T> {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppResult<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppResult<$T>()';
}


}

/// @nodoc
class $AppResultCopyWith<T,$Res>  {
$AppResultCopyWith(AppResult<T> _, $Res Function(AppResult<T>) __);
}


/// Adds pattern-matching-related methods to [AppResult].
extension AppResultPatterns<T> on AppResult<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( SuccessResult<T> value)?  success,TResult Function( FailureResult<T> value)?  failure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case SuccessResult() when success != null:
return success(_that);case FailureResult() when failure != null:
return failure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( SuccessResult<T> value)  success,required TResult Function( FailureResult<T> value)  failure,}){
final _that = this;
switch (_that) {
case SuccessResult():
return success(_that);case FailureResult():
return failure(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( SuccessResult<T> value)?  success,TResult? Function( FailureResult<T> value)?  failure,}){
final _that = this;
switch (_that) {
case SuccessResult() when success != null:
return success(_that);case FailureResult() when failure != null:
return failure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( T data)?  success,TResult Function( AppError error)?  failure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case SuccessResult() when success != null:
return success(_that.data);case FailureResult() when failure != null:
return failure(_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( T data)  success,required TResult Function( AppError error)  failure,}) {final _that = this;
switch (_that) {
case SuccessResult():
return success(_that.data);case FailureResult():
return failure(_that.error);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( T data)?  success,TResult? Function( AppError error)?  failure,}) {final _that = this;
switch (_that) {
case SuccessResult() when success != null:
return success(_that.data);case FailureResult() when failure != null:
return failure(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class SuccessResult<T> implements AppResult<T> {
  const SuccessResult(this.data);
  

 final  T data;

/// Create a copy of AppResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SuccessResultCopyWith<T, SuccessResult<T>> get copyWith => _$SuccessResultCopyWithImpl<T, SuccessResult<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SuccessResult<T>&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'AppResult<$T>.success(data: $data)';
}


}

/// @nodoc
abstract mixin class $SuccessResultCopyWith<T,$Res> implements $AppResultCopyWith<T, $Res> {
  factory $SuccessResultCopyWith(SuccessResult<T> value, $Res Function(SuccessResult<T>) _then) = _$SuccessResultCopyWithImpl;
@useResult
$Res call({
 T data
});




}
/// @nodoc
class _$SuccessResultCopyWithImpl<T,$Res>
    implements $SuccessResultCopyWith<T, $Res> {
  _$SuccessResultCopyWithImpl(this._self, this._then);

  final SuccessResult<T> _self;
  final $Res Function(SuccessResult<T>) _then;

/// Create a copy of AppResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(SuccessResult<T>(
freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class FailureResult<T> implements AppResult<T> {
  const FailureResult(this.error);
  

 final  AppError error;

/// Create a copy of AppResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FailureResultCopyWith<T, FailureResult<T>> get copyWith => _$FailureResultCopyWithImpl<T, FailureResult<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FailureResult<T>&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'AppResult<$T>.failure(error: $error)';
}


}

/// @nodoc
abstract mixin class $FailureResultCopyWith<T,$Res> implements $AppResultCopyWith<T, $Res> {
  factory $FailureResultCopyWith(FailureResult<T> value, $Res Function(FailureResult<T>) _then) = _$FailureResultCopyWithImpl;
@useResult
$Res call({
 AppError error
});


$AppErrorCopyWith<$Res> get error;

}
/// @nodoc
class _$FailureResultCopyWithImpl<T,$Res>
    implements $FailureResultCopyWith<T, $Res> {
  _$FailureResultCopyWithImpl(this._self, this._then);

  final FailureResult<T> _self;
  final $Res Function(FailureResult<T>) _then;

/// Create a copy of AppResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(FailureResult<T>(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as AppError,
  ));
}

/// Create a copy of AppResult
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
