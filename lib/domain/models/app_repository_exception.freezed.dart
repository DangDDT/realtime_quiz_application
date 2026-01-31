// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_repository_exception.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AppRepositoryException {

 AppError get cause;
/// Create a copy of AppRepositoryException
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppRepositoryExceptionCopyWith<AppRepositoryException> get copyWith => _$AppRepositoryExceptionCopyWithImpl<AppRepositoryException>(this as AppRepositoryException, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppRepositoryException&&(identical(other.cause, cause) || other.cause == cause));
}


@override
int get hashCode => Object.hash(runtimeType,cause);

@override
String toString() {
  return 'AppRepositoryException(cause: $cause)';
}


}

/// @nodoc
abstract mixin class $AppRepositoryExceptionCopyWith<$Res>  {
  factory $AppRepositoryExceptionCopyWith(AppRepositoryException value, $Res Function(AppRepositoryException) _then) = _$AppRepositoryExceptionCopyWithImpl;
@useResult
$Res call({
 AppError cause
});


$AppErrorCopyWith<$Res> get cause;

}
/// @nodoc
class _$AppRepositoryExceptionCopyWithImpl<$Res>
    implements $AppRepositoryExceptionCopyWith<$Res> {
  _$AppRepositoryExceptionCopyWithImpl(this._self, this._then);

  final AppRepositoryException _self;
  final $Res Function(AppRepositoryException) _then;

/// Create a copy of AppRepositoryException
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? cause = null,}) {
  return _then(_self.copyWith(
cause: null == cause ? _self.cause : cause // ignore: cast_nullable_to_non_nullable
as AppError,
  ));
}
/// Create a copy of AppRepositoryException
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AppErrorCopyWith<$Res> get cause {
  
  return $AppErrorCopyWith<$Res>(_self.cause, (value) {
    return _then(_self.copyWith(cause: value));
  });
}
}


/// Adds pattern-matching-related methods to [AppRepositoryException].
extension AppRepositoryExceptionPatterns on AppRepositoryException {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( LocalStorageRepositoryException value)?  local,TResult Function( RemoteRepositoryException value)?  remote,required TResult orElse(),}){
final _that = this;
switch (_that) {
case LocalStorageRepositoryException() when local != null:
return local(_that);case RemoteRepositoryException() when remote != null:
return remote(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( LocalStorageRepositoryException value)  local,required TResult Function( RemoteRepositoryException value)  remote,}){
final _that = this;
switch (_that) {
case LocalStorageRepositoryException():
return local(_that);case RemoteRepositoryException():
return remote(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( LocalStorageRepositoryException value)?  local,TResult? Function( RemoteRepositoryException value)?  remote,}){
final _that = this;
switch (_that) {
case LocalStorageRepositoryException() when local != null:
return local(_that);case RemoteRepositoryException() when remote != null:
return remote(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( AppError cause)?  local,TResult Function( AppError cause)?  remote,required TResult orElse(),}) {final _that = this;
switch (_that) {
case LocalStorageRepositoryException() when local != null:
return local(_that.cause);case RemoteRepositoryException() when remote != null:
return remote(_that.cause);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( AppError cause)  local,required TResult Function( AppError cause)  remote,}) {final _that = this;
switch (_that) {
case LocalStorageRepositoryException():
return local(_that.cause);case RemoteRepositoryException():
return remote(_that.cause);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( AppError cause)?  local,TResult? Function( AppError cause)?  remote,}) {final _that = this;
switch (_that) {
case LocalStorageRepositoryException() when local != null:
return local(_that.cause);case RemoteRepositoryException() when remote != null:
return remote(_that.cause);case _:
  return null;

}
}

}

/// @nodoc


class LocalStorageRepositoryException implements AppRepositoryException {
  const LocalStorageRepositoryException(this.cause);
  

@override final  AppError cause;

/// Create a copy of AppRepositoryException
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LocalStorageRepositoryExceptionCopyWith<LocalStorageRepositoryException> get copyWith => _$LocalStorageRepositoryExceptionCopyWithImpl<LocalStorageRepositoryException>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LocalStorageRepositoryException&&(identical(other.cause, cause) || other.cause == cause));
}


@override
int get hashCode => Object.hash(runtimeType,cause);

@override
String toString() {
  return 'AppRepositoryException.local(cause: $cause)';
}


}

/// @nodoc
abstract mixin class $LocalStorageRepositoryExceptionCopyWith<$Res> implements $AppRepositoryExceptionCopyWith<$Res> {
  factory $LocalStorageRepositoryExceptionCopyWith(LocalStorageRepositoryException value, $Res Function(LocalStorageRepositoryException) _then) = _$LocalStorageRepositoryExceptionCopyWithImpl;
@override @useResult
$Res call({
 AppError cause
});


@override $AppErrorCopyWith<$Res> get cause;

}
/// @nodoc
class _$LocalStorageRepositoryExceptionCopyWithImpl<$Res>
    implements $LocalStorageRepositoryExceptionCopyWith<$Res> {
  _$LocalStorageRepositoryExceptionCopyWithImpl(this._self, this._then);

  final LocalStorageRepositoryException _self;
  final $Res Function(LocalStorageRepositoryException) _then;

/// Create a copy of AppRepositoryException
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? cause = null,}) {
  return _then(LocalStorageRepositoryException(
null == cause ? _self.cause : cause // ignore: cast_nullable_to_non_nullable
as AppError,
  ));
}

/// Create a copy of AppRepositoryException
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AppErrorCopyWith<$Res> get cause {
  
  return $AppErrorCopyWith<$Res>(_self.cause, (value) {
    return _then(_self.copyWith(cause: value));
  });
}
}

/// @nodoc


class RemoteRepositoryException implements AppRepositoryException {
  const RemoteRepositoryException(this.cause);
  

@override final  AppError cause;

/// Create a copy of AppRepositoryException
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RemoteRepositoryExceptionCopyWith<RemoteRepositoryException> get copyWith => _$RemoteRepositoryExceptionCopyWithImpl<RemoteRepositoryException>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RemoteRepositoryException&&(identical(other.cause, cause) || other.cause == cause));
}


@override
int get hashCode => Object.hash(runtimeType,cause);

@override
String toString() {
  return 'AppRepositoryException.remote(cause: $cause)';
}


}

/// @nodoc
abstract mixin class $RemoteRepositoryExceptionCopyWith<$Res> implements $AppRepositoryExceptionCopyWith<$Res> {
  factory $RemoteRepositoryExceptionCopyWith(RemoteRepositoryException value, $Res Function(RemoteRepositoryException) _then) = _$RemoteRepositoryExceptionCopyWithImpl;
@override @useResult
$Res call({
 AppError cause
});


@override $AppErrorCopyWith<$Res> get cause;

}
/// @nodoc
class _$RemoteRepositoryExceptionCopyWithImpl<$Res>
    implements $RemoteRepositoryExceptionCopyWith<$Res> {
  _$RemoteRepositoryExceptionCopyWithImpl(this._self, this._then);

  final RemoteRepositoryException _self;
  final $Res Function(RemoteRepositoryException) _then;

/// Create a copy of AppRepositoryException
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? cause = null,}) {
  return _then(RemoteRepositoryException(
null == cause ? _self.cause : cause // ignore: cast_nullable_to_non_nullable
as AppError,
  ));
}

/// Create a copy of AppRepositoryException
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AppErrorCopyWith<$Res> get cause {
  
  return $AppErrorCopyWith<$Res>(_self.cause, (value) {
    return _then(_self.copyWith(cause: value));
  });
}
}

// dart format on
