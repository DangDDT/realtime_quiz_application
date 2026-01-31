// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AppError {

 String get message; Object? get cause; bool get retryable;
/// Create a copy of AppError
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppErrorCopyWith<AppError> get copyWith => _$AppErrorCopyWithImpl<AppError>(this as AppError, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppError&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other.cause, cause)&&(identical(other.retryable, retryable) || other.retryable == retryable));
}


@override
int get hashCode => Object.hash(runtimeType,message,const DeepCollectionEquality().hash(cause),retryable);

@override
String toString() {
  return 'AppError(message: $message, cause: $cause, retryable: $retryable)';
}


}

/// @nodoc
abstract mixin class $AppErrorCopyWith<$Res>  {
  factory $AppErrorCopyWith(AppError value, $Res Function(AppError) _then) = _$AppErrorCopyWithImpl;
@useResult
$Res call({
 String message, Object? cause, bool retryable
});




}
/// @nodoc
class _$AppErrorCopyWithImpl<$Res>
    implements $AppErrorCopyWith<$Res> {
  _$AppErrorCopyWithImpl(this._self, this._then);

  final AppError _self;
  final $Res Function(AppError) _then;

/// Create a copy of AppError
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = null,Object? cause = freezed,Object? retryable = null,}) {
  return _then(_self.copyWith(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,cause: freezed == cause ? _self.cause : cause ,retryable: null == retryable ? _self.retryable : retryable // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [AppError].
extension AppErrorPatterns on AppError {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( NetworkError value)?  network,TResult Function( LoadFailedError value)?  loadFailed,TResult Function( NotFoundError value)?  notFound,TResult Function( UnauthorizedError value)?  unauthorized,TResult Function( PermissionError value)?  permission,TResult Function( ServerError value)?  server,TResult Function( ExternalServiceError value)?  externalService,TResult Function( ValidationError value)?  validation,TResult Function( ConflictError value)?  conflict,TResult Function( DependencyError value)?  dependency,TResult Function( LocalStorageError value)?  localStorage,TResult Function( SerializationError value)?  serialization,TResult Function( SyncFailedError value)?  syncFailed,TResult Function( InternalError value)?  internal,TResult Function( UnknownError value)?  unknown,TResult Function( UncaughtError value)?  uncaught,TResult Function( CanceledError value)?  cancelled,TResult Function( BusinessError value)?  business,TResult Function( CustomError value)?  custom,required TResult orElse(),}){
final _that = this;
switch (_that) {
case NetworkError() when network != null:
return network(_that);case LoadFailedError() when loadFailed != null:
return loadFailed(_that);case NotFoundError() when notFound != null:
return notFound(_that);case UnauthorizedError() when unauthorized != null:
return unauthorized(_that);case PermissionError() when permission != null:
return permission(_that);case ServerError() when server != null:
return server(_that);case ExternalServiceError() when externalService != null:
return externalService(_that);case ValidationError() when validation != null:
return validation(_that);case ConflictError() when conflict != null:
return conflict(_that);case DependencyError() when dependency != null:
return dependency(_that);case LocalStorageError() when localStorage != null:
return localStorage(_that);case SerializationError() when serialization != null:
return serialization(_that);case SyncFailedError() when syncFailed != null:
return syncFailed(_that);case InternalError() when internal != null:
return internal(_that);case UnknownError() when unknown != null:
return unknown(_that);case UncaughtError() when uncaught != null:
return uncaught(_that);case CanceledError() when cancelled != null:
return cancelled(_that);case BusinessError() when business != null:
return business(_that);case CustomError() when custom != null:
return custom(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( NetworkError value)  network,required TResult Function( LoadFailedError value)  loadFailed,required TResult Function( NotFoundError value)  notFound,required TResult Function( UnauthorizedError value)  unauthorized,required TResult Function( PermissionError value)  permission,required TResult Function( ServerError value)  server,required TResult Function( ExternalServiceError value)  externalService,required TResult Function( ValidationError value)  validation,required TResult Function( ConflictError value)  conflict,required TResult Function( DependencyError value)  dependency,required TResult Function( LocalStorageError value)  localStorage,required TResult Function( SerializationError value)  serialization,required TResult Function( SyncFailedError value)  syncFailed,required TResult Function( InternalError value)  internal,required TResult Function( UnknownError value)  unknown,required TResult Function( UncaughtError value)  uncaught,required TResult Function( CanceledError value)  cancelled,required TResult Function( BusinessError value)  business,required TResult Function( CustomError value)  custom,}){
final _that = this;
switch (_that) {
case NetworkError():
return network(_that);case LoadFailedError():
return loadFailed(_that);case NotFoundError():
return notFound(_that);case UnauthorizedError():
return unauthorized(_that);case PermissionError():
return permission(_that);case ServerError():
return server(_that);case ExternalServiceError():
return externalService(_that);case ValidationError():
return validation(_that);case ConflictError():
return conflict(_that);case DependencyError():
return dependency(_that);case LocalStorageError():
return localStorage(_that);case SerializationError():
return serialization(_that);case SyncFailedError():
return syncFailed(_that);case InternalError():
return internal(_that);case UnknownError():
return unknown(_that);case UncaughtError():
return uncaught(_that);case CanceledError():
return cancelled(_that);case BusinessError():
return business(_that);case CustomError():
return custom(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( NetworkError value)?  network,TResult? Function( LoadFailedError value)?  loadFailed,TResult? Function( NotFoundError value)?  notFound,TResult? Function( UnauthorizedError value)?  unauthorized,TResult? Function( PermissionError value)?  permission,TResult? Function( ServerError value)?  server,TResult? Function( ExternalServiceError value)?  externalService,TResult? Function( ValidationError value)?  validation,TResult? Function( ConflictError value)?  conflict,TResult? Function( DependencyError value)?  dependency,TResult? Function( LocalStorageError value)?  localStorage,TResult? Function( SerializationError value)?  serialization,TResult? Function( SyncFailedError value)?  syncFailed,TResult? Function( InternalError value)?  internal,TResult? Function( UnknownError value)?  unknown,TResult? Function( UncaughtError value)?  uncaught,TResult? Function( CanceledError value)?  cancelled,TResult? Function( BusinessError value)?  business,TResult? Function( CustomError value)?  custom,}){
final _that = this;
switch (_that) {
case NetworkError() when network != null:
return network(_that);case LoadFailedError() when loadFailed != null:
return loadFailed(_that);case NotFoundError() when notFound != null:
return notFound(_that);case UnauthorizedError() when unauthorized != null:
return unauthorized(_that);case PermissionError() when permission != null:
return permission(_that);case ServerError() when server != null:
return server(_that);case ExternalServiceError() when externalService != null:
return externalService(_that);case ValidationError() when validation != null:
return validation(_that);case ConflictError() when conflict != null:
return conflict(_that);case DependencyError() when dependency != null:
return dependency(_that);case LocalStorageError() when localStorage != null:
return localStorage(_that);case SerializationError() when serialization != null:
return serialization(_that);case SyncFailedError() when syncFailed != null:
return syncFailed(_that);case InternalError() when internal != null:
return internal(_that);case UnknownError() when unknown != null:
return unknown(_that);case UncaughtError() when uncaught != null:
return uncaught(_that);case CanceledError() when cancelled != null:
return cancelled(_that);case BusinessError() when business != null:
return business(_that);case CustomError() when custom != null:
return custom(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String message,  String? errorCode,  Object? cause,  bool retryable)?  network,TResult Function( String message,  Object? cause,  bool retryable)?  loadFailed,TResult Function( String message,  String? resourceId,  Object? cause,  bool retryable)?  notFound,TResult Function( String message,  String? errorCode,  Object? cause,  bool retryable)?  unauthorized,TResult Function( String message,  String? errorCode,  Object? cause,  bool retryable)?  permission,TResult Function( String message,  String? errorCode,  Object? cause,  bool retryable)?  server,TResult Function( String message,  Object? cause,  bool retryable)?  externalService,TResult Function( String message,  Object? cause,  bool retryable)?  validation,TResult Function( String message,  String? resourceId,  Object? cause,  bool retryable)?  conflict,TResult Function( String message,  String? dependencyId,  Object? cause,  bool retryable)?  dependency,TResult Function( String message,  Object? cause,  bool retryable)?  localStorage,TResult Function( String message,  Object? cause,  bool retryable)?  serialization,TResult Function( String message,  String? errorCode,  Object? cause,  bool retryable)?  syncFailed,TResult Function( String message,  Object? cause,  bool retryable)?  internal,TResult Function( String message,  Object? cause,  bool retryable)?  unknown,TResult Function( String message,  Object? cause,  bool retryable)?  uncaught,TResult Function( String message,  Object? cause,  bool retryable)?  cancelled,TResult Function( String message,  Object? cause,  bool retryable)?  business,TResult Function( String message,  String? errorCode,  Object? cause,  bool retryable)?  custom,required TResult orElse(),}) {final _that = this;
switch (_that) {
case NetworkError() when network != null:
return network(_that.message,_that.errorCode,_that.cause,_that.retryable);case LoadFailedError() when loadFailed != null:
return loadFailed(_that.message,_that.cause,_that.retryable);case NotFoundError() when notFound != null:
return notFound(_that.message,_that.resourceId,_that.cause,_that.retryable);case UnauthorizedError() when unauthorized != null:
return unauthorized(_that.message,_that.errorCode,_that.cause,_that.retryable);case PermissionError() when permission != null:
return permission(_that.message,_that.errorCode,_that.cause,_that.retryable);case ServerError() when server != null:
return server(_that.message,_that.errorCode,_that.cause,_that.retryable);case ExternalServiceError() when externalService != null:
return externalService(_that.message,_that.cause,_that.retryable);case ValidationError() when validation != null:
return validation(_that.message,_that.cause,_that.retryable);case ConflictError() when conflict != null:
return conflict(_that.message,_that.resourceId,_that.cause,_that.retryable);case DependencyError() when dependency != null:
return dependency(_that.message,_that.dependencyId,_that.cause,_that.retryable);case LocalStorageError() when localStorage != null:
return localStorage(_that.message,_that.cause,_that.retryable);case SerializationError() when serialization != null:
return serialization(_that.message,_that.cause,_that.retryable);case SyncFailedError() when syncFailed != null:
return syncFailed(_that.message,_that.errorCode,_that.cause,_that.retryable);case InternalError() when internal != null:
return internal(_that.message,_that.cause,_that.retryable);case UnknownError() when unknown != null:
return unknown(_that.message,_that.cause,_that.retryable);case UncaughtError() when uncaught != null:
return uncaught(_that.message,_that.cause,_that.retryable);case CanceledError() when cancelled != null:
return cancelled(_that.message,_that.cause,_that.retryable);case BusinessError() when business != null:
return business(_that.message,_that.cause,_that.retryable);case CustomError() when custom != null:
return custom(_that.message,_that.errorCode,_that.cause,_that.retryable);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String message,  String? errorCode,  Object? cause,  bool retryable)  network,required TResult Function( String message,  Object? cause,  bool retryable)  loadFailed,required TResult Function( String message,  String? resourceId,  Object? cause,  bool retryable)  notFound,required TResult Function( String message,  String? errorCode,  Object? cause,  bool retryable)  unauthorized,required TResult Function( String message,  String? errorCode,  Object? cause,  bool retryable)  permission,required TResult Function( String message,  String? errorCode,  Object? cause,  bool retryable)  server,required TResult Function( String message,  Object? cause,  bool retryable)  externalService,required TResult Function( String message,  Object? cause,  bool retryable)  validation,required TResult Function( String message,  String? resourceId,  Object? cause,  bool retryable)  conflict,required TResult Function( String message,  String? dependencyId,  Object? cause,  bool retryable)  dependency,required TResult Function( String message,  Object? cause,  bool retryable)  localStorage,required TResult Function( String message,  Object? cause,  bool retryable)  serialization,required TResult Function( String message,  String? errorCode,  Object? cause,  bool retryable)  syncFailed,required TResult Function( String message,  Object? cause,  bool retryable)  internal,required TResult Function( String message,  Object? cause,  bool retryable)  unknown,required TResult Function( String message,  Object? cause,  bool retryable)  uncaught,required TResult Function( String message,  Object? cause,  bool retryable)  cancelled,required TResult Function( String message,  Object? cause,  bool retryable)  business,required TResult Function( String message,  String? errorCode,  Object? cause,  bool retryable)  custom,}) {final _that = this;
switch (_that) {
case NetworkError():
return network(_that.message,_that.errorCode,_that.cause,_that.retryable);case LoadFailedError():
return loadFailed(_that.message,_that.cause,_that.retryable);case NotFoundError():
return notFound(_that.message,_that.resourceId,_that.cause,_that.retryable);case UnauthorizedError():
return unauthorized(_that.message,_that.errorCode,_that.cause,_that.retryable);case PermissionError():
return permission(_that.message,_that.errorCode,_that.cause,_that.retryable);case ServerError():
return server(_that.message,_that.errorCode,_that.cause,_that.retryable);case ExternalServiceError():
return externalService(_that.message,_that.cause,_that.retryable);case ValidationError():
return validation(_that.message,_that.cause,_that.retryable);case ConflictError():
return conflict(_that.message,_that.resourceId,_that.cause,_that.retryable);case DependencyError():
return dependency(_that.message,_that.dependencyId,_that.cause,_that.retryable);case LocalStorageError():
return localStorage(_that.message,_that.cause,_that.retryable);case SerializationError():
return serialization(_that.message,_that.cause,_that.retryable);case SyncFailedError():
return syncFailed(_that.message,_that.errorCode,_that.cause,_that.retryable);case InternalError():
return internal(_that.message,_that.cause,_that.retryable);case UnknownError():
return unknown(_that.message,_that.cause,_that.retryable);case UncaughtError():
return uncaught(_that.message,_that.cause,_that.retryable);case CanceledError():
return cancelled(_that.message,_that.cause,_that.retryable);case BusinessError():
return business(_that.message,_that.cause,_that.retryable);case CustomError():
return custom(_that.message,_that.errorCode,_that.cause,_that.retryable);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String message,  String? errorCode,  Object? cause,  bool retryable)?  network,TResult? Function( String message,  Object? cause,  bool retryable)?  loadFailed,TResult? Function( String message,  String? resourceId,  Object? cause,  bool retryable)?  notFound,TResult? Function( String message,  String? errorCode,  Object? cause,  bool retryable)?  unauthorized,TResult? Function( String message,  String? errorCode,  Object? cause,  bool retryable)?  permission,TResult? Function( String message,  String? errorCode,  Object? cause,  bool retryable)?  server,TResult? Function( String message,  Object? cause,  bool retryable)?  externalService,TResult? Function( String message,  Object? cause,  bool retryable)?  validation,TResult? Function( String message,  String? resourceId,  Object? cause,  bool retryable)?  conflict,TResult? Function( String message,  String? dependencyId,  Object? cause,  bool retryable)?  dependency,TResult? Function( String message,  Object? cause,  bool retryable)?  localStorage,TResult? Function( String message,  Object? cause,  bool retryable)?  serialization,TResult? Function( String message,  String? errorCode,  Object? cause,  bool retryable)?  syncFailed,TResult? Function( String message,  Object? cause,  bool retryable)?  internal,TResult? Function( String message,  Object? cause,  bool retryable)?  unknown,TResult? Function( String message,  Object? cause,  bool retryable)?  uncaught,TResult? Function( String message,  Object? cause,  bool retryable)?  cancelled,TResult? Function( String message,  Object? cause,  bool retryable)?  business,TResult? Function( String message,  String? errorCode,  Object? cause,  bool retryable)?  custom,}) {final _that = this;
switch (_that) {
case NetworkError() when network != null:
return network(_that.message,_that.errorCode,_that.cause,_that.retryable);case LoadFailedError() when loadFailed != null:
return loadFailed(_that.message,_that.cause,_that.retryable);case NotFoundError() when notFound != null:
return notFound(_that.message,_that.resourceId,_that.cause,_that.retryable);case UnauthorizedError() when unauthorized != null:
return unauthorized(_that.message,_that.errorCode,_that.cause,_that.retryable);case PermissionError() when permission != null:
return permission(_that.message,_that.errorCode,_that.cause,_that.retryable);case ServerError() when server != null:
return server(_that.message,_that.errorCode,_that.cause,_that.retryable);case ExternalServiceError() when externalService != null:
return externalService(_that.message,_that.cause,_that.retryable);case ValidationError() when validation != null:
return validation(_that.message,_that.cause,_that.retryable);case ConflictError() when conflict != null:
return conflict(_that.message,_that.resourceId,_that.cause,_that.retryable);case DependencyError() when dependency != null:
return dependency(_that.message,_that.dependencyId,_that.cause,_that.retryable);case LocalStorageError() when localStorage != null:
return localStorage(_that.message,_that.cause,_that.retryable);case SerializationError() when serialization != null:
return serialization(_that.message,_that.cause,_that.retryable);case SyncFailedError() when syncFailed != null:
return syncFailed(_that.message,_that.errorCode,_that.cause,_that.retryable);case InternalError() when internal != null:
return internal(_that.message,_that.cause,_that.retryable);case UnknownError() when unknown != null:
return unknown(_that.message,_that.cause,_that.retryable);case UncaughtError() when uncaught != null:
return uncaught(_that.message,_that.cause,_that.retryable);case CanceledError() when cancelled != null:
return cancelled(_that.message,_that.cause,_that.retryable);case BusinessError() when business != null:
return business(_that.message,_that.cause,_that.retryable);case CustomError() when custom != null:
return custom(_that.message,_that.errorCode,_that.cause,_that.retryable);case _:
  return null;

}
}

}

/// @nodoc


class NetworkError implements AppError {
  const NetworkError({required this.message, this.errorCode, this.cause, this.retryable = true});
  

@override final  String message;
 final  String? errorCode;
@override final  Object? cause;
@override@JsonKey() final  bool retryable;

/// Create a copy of AppError
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NetworkErrorCopyWith<NetworkError> get copyWith => _$NetworkErrorCopyWithImpl<NetworkError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NetworkError&&(identical(other.message, message) || other.message == message)&&(identical(other.errorCode, errorCode) || other.errorCode == errorCode)&&const DeepCollectionEquality().equals(other.cause, cause)&&(identical(other.retryable, retryable) || other.retryable == retryable));
}


@override
int get hashCode => Object.hash(runtimeType,message,errorCode,const DeepCollectionEquality().hash(cause),retryable);

@override
String toString() {
  return 'AppError.network(message: $message, errorCode: $errorCode, cause: $cause, retryable: $retryable)';
}


}

/// @nodoc
abstract mixin class $NetworkErrorCopyWith<$Res> implements $AppErrorCopyWith<$Res> {
  factory $NetworkErrorCopyWith(NetworkError value, $Res Function(NetworkError) _then) = _$NetworkErrorCopyWithImpl;
@override @useResult
$Res call({
 String message, String? errorCode, Object? cause, bool retryable
});




}
/// @nodoc
class _$NetworkErrorCopyWithImpl<$Res>
    implements $NetworkErrorCopyWith<$Res> {
  _$NetworkErrorCopyWithImpl(this._self, this._then);

  final NetworkError _self;
  final $Res Function(NetworkError) _then;

/// Create a copy of AppError
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,Object? errorCode = freezed,Object? cause = freezed,Object? retryable = null,}) {
  return _then(NetworkError(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,errorCode: freezed == errorCode ? _self.errorCode : errorCode // ignore: cast_nullable_to_non_nullable
as String?,cause: freezed == cause ? _self.cause : cause ,retryable: null == retryable ? _self.retryable : retryable // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class LoadFailedError implements AppError {
  const LoadFailedError({required this.message, this.cause, this.retryable = false});
  

@override final  String message;
@override final  Object? cause;
@override@JsonKey() final  bool retryable;

/// Create a copy of AppError
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadFailedErrorCopyWith<LoadFailedError> get copyWith => _$LoadFailedErrorCopyWithImpl<LoadFailedError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadFailedError&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other.cause, cause)&&(identical(other.retryable, retryable) || other.retryable == retryable));
}


@override
int get hashCode => Object.hash(runtimeType,message,const DeepCollectionEquality().hash(cause),retryable);

@override
String toString() {
  return 'AppError.loadFailed(message: $message, cause: $cause, retryable: $retryable)';
}


}

/// @nodoc
abstract mixin class $LoadFailedErrorCopyWith<$Res> implements $AppErrorCopyWith<$Res> {
  factory $LoadFailedErrorCopyWith(LoadFailedError value, $Res Function(LoadFailedError) _then) = _$LoadFailedErrorCopyWithImpl;
@override @useResult
$Res call({
 String message, Object? cause, bool retryable
});




}
/// @nodoc
class _$LoadFailedErrorCopyWithImpl<$Res>
    implements $LoadFailedErrorCopyWith<$Res> {
  _$LoadFailedErrorCopyWithImpl(this._self, this._then);

  final LoadFailedError _self;
  final $Res Function(LoadFailedError) _then;

/// Create a copy of AppError
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,Object? cause = freezed,Object? retryable = null,}) {
  return _then(LoadFailedError(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,cause: freezed == cause ? _self.cause : cause ,retryable: null == retryable ? _self.retryable : retryable // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class NotFoundError implements AppError {
  const NotFoundError({required this.message, this.resourceId, this.cause, this.retryable = false});
  

@override final  String message;
 final  String? resourceId;
@override final  Object? cause;
@override@JsonKey() final  bool retryable;

/// Create a copy of AppError
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotFoundErrorCopyWith<NotFoundError> get copyWith => _$NotFoundErrorCopyWithImpl<NotFoundError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotFoundError&&(identical(other.message, message) || other.message == message)&&(identical(other.resourceId, resourceId) || other.resourceId == resourceId)&&const DeepCollectionEquality().equals(other.cause, cause)&&(identical(other.retryable, retryable) || other.retryable == retryable));
}


@override
int get hashCode => Object.hash(runtimeType,message,resourceId,const DeepCollectionEquality().hash(cause),retryable);

@override
String toString() {
  return 'AppError.notFound(message: $message, resourceId: $resourceId, cause: $cause, retryable: $retryable)';
}


}

/// @nodoc
abstract mixin class $NotFoundErrorCopyWith<$Res> implements $AppErrorCopyWith<$Res> {
  factory $NotFoundErrorCopyWith(NotFoundError value, $Res Function(NotFoundError) _then) = _$NotFoundErrorCopyWithImpl;
@override @useResult
$Res call({
 String message, String? resourceId, Object? cause, bool retryable
});




}
/// @nodoc
class _$NotFoundErrorCopyWithImpl<$Res>
    implements $NotFoundErrorCopyWith<$Res> {
  _$NotFoundErrorCopyWithImpl(this._self, this._then);

  final NotFoundError _self;
  final $Res Function(NotFoundError) _then;

/// Create a copy of AppError
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,Object? resourceId = freezed,Object? cause = freezed,Object? retryable = null,}) {
  return _then(NotFoundError(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,resourceId: freezed == resourceId ? _self.resourceId : resourceId // ignore: cast_nullable_to_non_nullable
as String?,cause: freezed == cause ? _self.cause : cause ,retryable: null == retryable ? _self.retryable : retryable // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class UnauthorizedError implements AppError {
  const UnauthorizedError({required this.message, this.errorCode, this.cause, this.retryable = false});
  

@override final  String message;
 final  String? errorCode;
@override final  Object? cause;
@override@JsonKey() final  bool retryable;

/// Create a copy of AppError
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UnauthorizedErrorCopyWith<UnauthorizedError> get copyWith => _$UnauthorizedErrorCopyWithImpl<UnauthorizedError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UnauthorizedError&&(identical(other.message, message) || other.message == message)&&(identical(other.errorCode, errorCode) || other.errorCode == errorCode)&&const DeepCollectionEquality().equals(other.cause, cause)&&(identical(other.retryable, retryable) || other.retryable == retryable));
}


@override
int get hashCode => Object.hash(runtimeType,message,errorCode,const DeepCollectionEquality().hash(cause),retryable);

@override
String toString() {
  return 'AppError.unauthorized(message: $message, errorCode: $errorCode, cause: $cause, retryable: $retryable)';
}


}

/// @nodoc
abstract mixin class $UnauthorizedErrorCopyWith<$Res> implements $AppErrorCopyWith<$Res> {
  factory $UnauthorizedErrorCopyWith(UnauthorizedError value, $Res Function(UnauthorizedError) _then) = _$UnauthorizedErrorCopyWithImpl;
@override @useResult
$Res call({
 String message, String? errorCode, Object? cause, bool retryable
});




}
/// @nodoc
class _$UnauthorizedErrorCopyWithImpl<$Res>
    implements $UnauthorizedErrorCopyWith<$Res> {
  _$UnauthorizedErrorCopyWithImpl(this._self, this._then);

  final UnauthorizedError _self;
  final $Res Function(UnauthorizedError) _then;

/// Create a copy of AppError
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,Object? errorCode = freezed,Object? cause = freezed,Object? retryable = null,}) {
  return _then(UnauthorizedError(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,errorCode: freezed == errorCode ? _self.errorCode : errorCode // ignore: cast_nullable_to_non_nullable
as String?,cause: freezed == cause ? _self.cause : cause ,retryable: null == retryable ? _self.retryable : retryable // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class PermissionError implements AppError {
  const PermissionError({required this.message, this.errorCode, this.cause, this.retryable = false});
  

@override final  String message;
 final  String? errorCode;
@override final  Object? cause;
@override@JsonKey() final  bool retryable;

/// Create a copy of AppError
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PermissionErrorCopyWith<PermissionError> get copyWith => _$PermissionErrorCopyWithImpl<PermissionError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PermissionError&&(identical(other.message, message) || other.message == message)&&(identical(other.errorCode, errorCode) || other.errorCode == errorCode)&&const DeepCollectionEquality().equals(other.cause, cause)&&(identical(other.retryable, retryable) || other.retryable == retryable));
}


@override
int get hashCode => Object.hash(runtimeType,message,errorCode,const DeepCollectionEquality().hash(cause),retryable);

@override
String toString() {
  return 'AppError.permission(message: $message, errorCode: $errorCode, cause: $cause, retryable: $retryable)';
}


}

/// @nodoc
abstract mixin class $PermissionErrorCopyWith<$Res> implements $AppErrorCopyWith<$Res> {
  factory $PermissionErrorCopyWith(PermissionError value, $Res Function(PermissionError) _then) = _$PermissionErrorCopyWithImpl;
@override @useResult
$Res call({
 String message, String? errorCode, Object? cause, bool retryable
});




}
/// @nodoc
class _$PermissionErrorCopyWithImpl<$Res>
    implements $PermissionErrorCopyWith<$Res> {
  _$PermissionErrorCopyWithImpl(this._self, this._then);

  final PermissionError _self;
  final $Res Function(PermissionError) _then;

/// Create a copy of AppError
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,Object? errorCode = freezed,Object? cause = freezed,Object? retryable = null,}) {
  return _then(PermissionError(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,errorCode: freezed == errorCode ? _self.errorCode : errorCode // ignore: cast_nullable_to_non_nullable
as String?,cause: freezed == cause ? _self.cause : cause ,retryable: null == retryable ? _self.retryable : retryable // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class ServerError implements AppError {
  const ServerError({required this.message, this.errorCode, this.cause, this.retryable = true});
  

@override final  String message;
 final  String? errorCode;
@override final  Object? cause;
@override@JsonKey() final  bool retryable;

/// Create a copy of AppError
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ServerErrorCopyWith<ServerError> get copyWith => _$ServerErrorCopyWithImpl<ServerError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ServerError&&(identical(other.message, message) || other.message == message)&&(identical(other.errorCode, errorCode) || other.errorCode == errorCode)&&const DeepCollectionEquality().equals(other.cause, cause)&&(identical(other.retryable, retryable) || other.retryable == retryable));
}


@override
int get hashCode => Object.hash(runtimeType,message,errorCode,const DeepCollectionEquality().hash(cause),retryable);

@override
String toString() {
  return 'AppError.server(message: $message, errorCode: $errorCode, cause: $cause, retryable: $retryable)';
}


}

/// @nodoc
abstract mixin class $ServerErrorCopyWith<$Res> implements $AppErrorCopyWith<$Res> {
  factory $ServerErrorCopyWith(ServerError value, $Res Function(ServerError) _then) = _$ServerErrorCopyWithImpl;
@override @useResult
$Res call({
 String message, String? errorCode, Object? cause, bool retryable
});




}
/// @nodoc
class _$ServerErrorCopyWithImpl<$Res>
    implements $ServerErrorCopyWith<$Res> {
  _$ServerErrorCopyWithImpl(this._self, this._then);

  final ServerError _self;
  final $Res Function(ServerError) _then;

/// Create a copy of AppError
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,Object? errorCode = freezed,Object? cause = freezed,Object? retryable = null,}) {
  return _then(ServerError(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,errorCode: freezed == errorCode ? _self.errorCode : errorCode // ignore: cast_nullable_to_non_nullable
as String?,cause: freezed == cause ? _self.cause : cause ,retryable: null == retryable ? _self.retryable : retryable // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class ExternalServiceError implements AppError {
  const ExternalServiceError({required this.message, this.cause, this.retryable = true});
  

@override final  String message;
@override final  Object? cause;
@override@JsonKey() final  bool retryable;

/// Create a copy of AppError
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExternalServiceErrorCopyWith<ExternalServiceError> get copyWith => _$ExternalServiceErrorCopyWithImpl<ExternalServiceError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExternalServiceError&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other.cause, cause)&&(identical(other.retryable, retryable) || other.retryable == retryable));
}


@override
int get hashCode => Object.hash(runtimeType,message,const DeepCollectionEquality().hash(cause),retryable);

@override
String toString() {
  return 'AppError.externalService(message: $message, cause: $cause, retryable: $retryable)';
}


}

/// @nodoc
abstract mixin class $ExternalServiceErrorCopyWith<$Res> implements $AppErrorCopyWith<$Res> {
  factory $ExternalServiceErrorCopyWith(ExternalServiceError value, $Res Function(ExternalServiceError) _then) = _$ExternalServiceErrorCopyWithImpl;
@override @useResult
$Res call({
 String message, Object? cause, bool retryable
});




}
/// @nodoc
class _$ExternalServiceErrorCopyWithImpl<$Res>
    implements $ExternalServiceErrorCopyWith<$Res> {
  _$ExternalServiceErrorCopyWithImpl(this._self, this._then);

  final ExternalServiceError _self;
  final $Res Function(ExternalServiceError) _then;

/// Create a copy of AppError
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,Object? cause = freezed,Object? retryable = null,}) {
  return _then(ExternalServiceError(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,cause: freezed == cause ? _self.cause : cause ,retryable: null == retryable ? _self.retryable : retryable // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class ValidationError implements AppError {
  const ValidationError({required this.message, this.cause, this.retryable = false});
  

@override final  String message;
@override final  Object? cause;
@override@JsonKey() final  bool retryable;

/// Create a copy of AppError
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ValidationErrorCopyWith<ValidationError> get copyWith => _$ValidationErrorCopyWithImpl<ValidationError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ValidationError&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other.cause, cause)&&(identical(other.retryable, retryable) || other.retryable == retryable));
}


@override
int get hashCode => Object.hash(runtimeType,message,const DeepCollectionEquality().hash(cause),retryable);

@override
String toString() {
  return 'AppError.validation(message: $message, cause: $cause, retryable: $retryable)';
}


}

/// @nodoc
abstract mixin class $ValidationErrorCopyWith<$Res> implements $AppErrorCopyWith<$Res> {
  factory $ValidationErrorCopyWith(ValidationError value, $Res Function(ValidationError) _then) = _$ValidationErrorCopyWithImpl;
@override @useResult
$Res call({
 String message, Object? cause, bool retryable
});




}
/// @nodoc
class _$ValidationErrorCopyWithImpl<$Res>
    implements $ValidationErrorCopyWith<$Res> {
  _$ValidationErrorCopyWithImpl(this._self, this._then);

  final ValidationError _self;
  final $Res Function(ValidationError) _then;

/// Create a copy of AppError
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,Object? cause = freezed,Object? retryable = null,}) {
  return _then(ValidationError(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,cause: freezed == cause ? _self.cause : cause ,retryable: null == retryable ? _self.retryable : retryable // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class ConflictError implements AppError {
  const ConflictError({required this.message, this.resourceId, this.cause, this.retryable = false});
  

@override final  String message;
 final  String? resourceId;
@override final  Object? cause;
@override@JsonKey() final  bool retryable;

/// Create a copy of AppError
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ConflictErrorCopyWith<ConflictError> get copyWith => _$ConflictErrorCopyWithImpl<ConflictError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConflictError&&(identical(other.message, message) || other.message == message)&&(identical(other.resourceId, resourceId) || other.resourceId == resourceId)&&const DeepCollectionEquality().equals(other.cause, cause)&&(identical(other.retryable, retryable) || other.retryable == retryable));
}


@override
int get hashCode => Object.hash(runtimeType,message,resourceId,const DeepCollectionEquality().hash(cause),retryable);

@override
String toString() {
  return 'AppError.conflict(message: $message, resourceId: $resourceId, cause: $cause, retryable: $retryable)';
}


}

/// @nodoc
abstract mixin class $ConflictErrorCopyWith<$Res> implements $AppErrorCopyWith<$Res> {
  factory $ConflictErrorCopyWith(ConflictError value, $Res Function(ConflictError) _then) = _$ConflictErrorCopyWithImpl;
@override @useResult
$Res call({
 String message, String? resourceId, Object? cause, bool retryable
});




}
/// @nodoc
class _$ConflictErrorCopyWithImpl<$Res>
    implements $ConflictErrorCopyWith<$Res> {
  _$ConflictErrorCopyWithImpl(this._self, this._then);

  final ConflictError _self;
  final $Res Function(ConflictError) _then;

/// Create a copy of AppError
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,Object? resourceId = freezed,Object? cause = freezed,Object? retryable = null,}) {
  return _then(ConflictError(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,resourceId: freezed == resourceId ? _self.resourceId : resourceId // ignore: cast_nullable_to_non_nullable
as String?,cause: freezed == cause ? _self.cause : cause ,retryable: null == retryable ? _self.retryable : retryable // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class DependencyError implements AppError {
  const DependencyError({required this.message, this.dependencyId, this.cause, this.retryable = false});
  

@override final  String message;
 final  String? dependencyId;
@override final  Object? cause;
@override@JsonKey() final  bool retryable;

/// Create a copy of AppError
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DependencyErrorCopyWith<DependencyError> get copyWith => _$DependencyErrorCopyWithImpl<DependencyError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DependencyError&&(identical(other.message, message) || other.message == message)&&(identical(other.dependencyId, dependencyId) || other.dependencyId == dependencyId)&&const DeepCollectionEquality().equals(other.cause, cause)&&(identical(other.retryable, retryable) || other.retryable == retryable));
}


@override
int get hashCode => Object.hash(runtimeType,message,dependencyId,const DeepCollectionEquality().hash(cause),retryable);

@override
String toString() {
  return 'AppError.dependency(message: $message, dependencyId: $dependencyId, cause: $cause, retryable: $retryable)';
}


}

/// @nodoc
abstract mixin class $DependencyErrorCopyWith<$Res> implements $AppErrorCopyWith<$Res> {
  factory $DependencyErrorCopyWith(DependencyError value, $Res Function(DependencyError) _then) = _$DependencyErrorCopyWithImpl;
@override @useResult
$Res call({
 String message, String? dependencyId, Object? cause, bool retryable
});




}
/// @nodoc
class _$DependencyErrorCopyWithImpl<$Res>
    implements $DependencyErrorCopyWith<$Res> {
  _$DependencyErrorCopyWithImpl(this._self, this._then);

  final DependencyError _self;
  final $Res Function(DependencyError) _then;

/// Create a copy of AppError
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,Object? dependencyId = freezed,Object? cause = freezed,Object? retryable = null,}) {
  return _then(DependencyError(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,dependencyId: freezed == dependencyId ? _self.dependencyId : dependencyId // ignore: cast_nullable_to_non_nullable
as String?,cause: freezed == cause ? _self.cause : cause ,retryable: null == retryable ? _self.retryable : retryable // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class LocalStorageError implements AppError {
  const LocalStorageError({required this.message, this.cause, this.retryable = false});
  

@override final  String message;
@override final  Object? cause;
@override@JsonKey() final  bool retryable;

/// Create a copy of AppError
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LocalStorageErrorCopyWith<LocalStorageError> get copyWith => _$LocalStorageErrorCopyWithImpl<LocalStorageError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LocalStorageError&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other.cause, cause)&&(identical(other.retryable, retryable) || other.retryable == retryable));
}


@override
int get hashCode => Object.hash(runtimeType,message,const DeepCollectionEquality().hash(cause),retryable);

@override
String toString() {
  return 'AppError.localStorage(message: $message, cause: $cause, retryable: $retryable)';
}


}

/// @nodoc
abstract mixin class $LocalStorageErrorCopyWith<$Res> implements $AppErrorCopyWith<$Res> {
  factory $LocalStorageErrorCopyWith(LocalStorageError value, $Res Function(LocalStorageError) _then) = _$LocalStorageErrorCopyWithImpl;
@override @useResult
$Res call({
 String message, Object? cause, bool retryable
});




}
/// @nodoc
class _$LocalStorageErrorCopyWithImpl<$Res>
    implements $LocalStorageErrorCopyWith<$Res> {
  _$LocalStorageErrorCopyWithImpl(this._self, this._then);

  final LocalStorageError _self;
  final $Res Function(LocalStorageError) _then;

/// Create a copy of AppError
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,Object? cause = freezed,Object? retryable = null,}) {
  return _then(LocalStorageError(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,cause: freezed == cause ? _self.cause : cause ,retryable: null == retryable ? _self.retryable : retryable // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class SerializationError implements AppError {
  const SerializationError({required this.message, this.cause, this.retryable = false});
  

@override final  String message;
@override final  Object? cause;
@override@JsonKey() final  bool retryable;

/// Create a copy of AppError
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SerializationErrorCopyWith<SerializationError> get copyWith => _$SerializationErrorCopyWithImpl<SerializationError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SerializationError&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other.cause, cause)&&(identical(other.retryable, retryable) || other.retryable == retryable));
}


@override
int get hashCode => Object.hash(runtimeType,message,const DeepCollectionEquality().hash(cause),retryable);

@override
String toString() {
  return 'AppError.serialization(message: $message, cause: $cause, retryable: $retryable)';
}


}

/// @nodoc
abstract mixin class $SerializationErrorCopyWith<$Res> implements $AppErrorCopyWith<$Res> {
  factory $SerializationErrorCopyWith(SerializationError value, $Res Function(SerializationError) _then) = _$SerializationErrorCopyWithImpl;
@override @useResult
$Res call({
 String message, Object? cause, bool retryable
});




}
/// @nodoc
class _$SerializationErrorCopyWithImpl<$Res>
    implements $SerializationErrorCopyWith<$Res> {
  _$SerializationErrorCopyWithImpl(this._self, this._then);

  final SerializationError _self;
  final $Res Function(SerializationError) _then;

/// Create a copy of AppError
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,Object? cause = freezed,Object? retryable = null,}) {
  return _then(SerializationError(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,cause: freezed == cause ? _self.cause : cause ,retryable: null == retryable ? _self.retryable : retryable // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class SyncFailedError implements AppError {
  const SyncFailedError({required this.message, this.errorCode, this.cause, this.retryable = true});
  

@override final  String message;
 final  String? errorCode;
@override final  Object? cause;
@override@JsonKey() final  bool retryable;

/// Create a copy of AppError
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SyncFailedErrorCopyWith<SyncFailedError> get copyWith => _$SyncFailedErrorCopyWithImpl<SyncFailedError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SyncFailedError&&(identical(other.message, message) || other.message == message)&&(identical(other.errorCode, errorCode) || other.errorCode == errorCode)&&const DeepCollectionEquality().equals(other.cause, cause)&&(identical(other.retryable, retryable) || other.retryable == retryable));
}


@override
int get hashCode => Object.hash(runtimeType,message,errorCode,const DeepCollectionEquality().hash(cause),retryable);

@override
String toString() {
  return 'AppError.syncFailed(message: $message, errorCode: $errorCode, cause: $cause, retryable: $retryable)';
}


}

/// @nodoc
abstract mixin class $SyncFailedErrorCopyWith<$Res> implements $AppErrorCopyWith<$Res> {
  factory $SyncFailedErrorCopyWith(SyncFailedError value, $Res Function(SyncFailedError) _then) = _$SyncFailedErrorCopyWithImpl;
@override @useResult
$Res call({
 String message, String? errorCode, Object? cause, bool retryable
});




}
/// @nodoc
class _$SyncFailedErrorCopyWithImpl<$Res>
    implements $SyncFailedErrorCopyWith<$Res> {
  _$SyncFailedErrorCopyWithImpl(this._self, this._then);

  final SyncFailedError _self;
  final $Res Function(SyncFailedError) _then;

/// Create a copy of AppError
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,Object? errorCode = freezed,Object? cause = freezed,Object? retryable = null,}) {
  return _then(SyncFailedError(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,errorCode: freezed == errorCode ? _self.errorCode : errorCode // ignore: cast_nullable_to_non_nullable
as String?,cause: freezed == cause ? _self.cause : cause ,retryable: null == retryable ? _self.retryable : retryable // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class InternalError implements AppError {
  const InternalError({required this.message, this.cause, this.retryable = false});
  

@override final  String message;
@override final  Object? cause;
@override@JsonKey() final  bool retryable;

/// Create a copy of AppError
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InternalErrorCopyWith<InternalError> get copyWith => _$InternalErrorCopyWithImpl<InternalError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InternalError&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other.cause, cause)&&(identical(other.retryable, retryable) || other.retryable == retryable));
}


@override
int get hashCode => Object.hash(runtimeType,message,const DeepCollectionEquality().hash(cause),retryable);

@override
String toString() {
  return 'AppError.internal(message: $message, cause: $cause, retryable: $retryable)';
}


}

/// @nodoc
abstract mixin class $InternalErrorCopyWith<$Res> implements $AppErrorCopyWith<$Res> {
  factory $InternalErrorCopyWith(InternalError value, $Res Function(InternalError) _then) = _$InternalErrorCopyWithImpl;
@override @useResult
$Res call({
 String message, Object? cause, bool retryable
});




}
/// @nodoc
class _$InternalErrorCopyWithImpl<$Res>
    implements $InternalErrorCopyWith<$Res> {
  _$InternalErrorCopyWithImpl(this._self, this._then);

  final InternalError _self;
  final $Res Function(InternalError) _then;

/// Create a copy of AppError
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,Object? cause = freezed,Object? retryable = null,}) {
  return _then(InternalError(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,cause: freezed == cause ? _self.cause : cause ,retryable: null == retryable ? _self.retryable : retryable // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class UnknownError implements AppError {
  const UnknownError({required this.message, this.cause, this.retryable = false});
  

@override final  String message;
@override final  Object? cause;
@override@JsonKey() final  bool retryable;

/// Create a copy of AppError
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UnknownErrorCopyWith<UnknownError> get copyWith => _$UnknownErrorCopyWithImpl<UnknownError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UnknownError&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other.cause, cause)&&(identical(other.retryable, retryable) || other.retryable == retryable));
}


@override
int get hashCode => Object.hash(runtimeType,message,const DeepCollectionEquality().hash(cause),retryable);

@override
String toString() {
  return 'AppError.unknown(message: $message, cause: $cause, retryable: $retryable)';
}


}

/// @nodoc
abstract mixin class $UnknownErrorCopyWith<$Res> implements $AppErrorCopyWith<$Res> {
  factory $UnknownErrorCopyWith(UnknownError value, $Res Function(UnknownError) _then) = _$UnknownErrorCopyWithImpl;
@override @useResult
$Res call({
 String message, Object? cause, bool retryable
});




}
/// @nodoc
class _$UnknownErrorCopyWithImpl<$Res>
    implements $UnknownErrorCopyWith<$Res> {
  _$UnknownErrorCopyWithImpl(this._self, this._then);

  final UnknownError _self;
  final $Res Function(UnknownError) _then;

/// Create a copy of AppError
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,Object? cause = freezed,Object? retryable = null,}) {
  return _then(UnknownError(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,cause: freezed == cause ? _self.cause : cause ,retryable: null == retryable ? _self.retryable : retryable // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class UncaughtError implements AppError {
  const UncaughtError({required this.message, this.cause, this.retryable = false});
  

@override final  String message;
@override final  Object? cause;
@override@JsonKey() final  bool retryable;

/// Create a copy of AppError
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UncaughtErrorCopyWith<UncaughtError> get copyWith => _$UncaughtErrorCopyWithImpl<UncaughtError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UncaughtError&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other.cause, cause)&&(identical(other.retryable, retryable) || other.retryable == retryable));
}


@override
int get hashCode => Object.hash(runtimeType,message,const DeepCollectionEquality().hash(cause),retryable);

@override
String toString() {
  return 'AppError.uncaught(message: $message, cause: $cause, retryable: $retryable)';
}


}

/// @nodoc
abstract mixin class $UncaughtErrorCopyWith<$Res> implements $AppErrorCopyWith<$Res> {
  factory $UncaughtErrorCopyWith(UncaughtError value, $Res Function(UncaughtError) _then) = _$UncaughtErrorCopyWithImpl;
@override @useResult
$Res call({
 String message, Object? cause, bool retryable
});




}
/// @nodoc
class _$UncaughtErrorCopyWithImpl<$Res>
    implements $UncaughtErrorCopyWith<$Res> {
  _$UncaughtErrorCopyWithImpl(this._self, this._then);

  final UncaughtError _self;
  final $Res Function(UncaughtError) _then;

/// Create a copy of AppError
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,Object? cause = freezed,Object? retryable = null,}) {
  return _then(UncaughtError(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,cause: freezed == cause ? _self.cause : cause ,retryable: null == retryable ? _self.retryable : retryable // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class CanceledError implements AppError {
  const CanceledError({required this.message, this.cause, this.retryable = false});
  

@override final  String message;
@override final  Object? cause;
@override@JsonKey() final  bool retryable;

/// Create a copy of AppError
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CanceledErrorCopyWith<CanceledError> get copyWith => _$CanceledErrorCopyWithImpl<CanceledError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CanceledError&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other.cause, cause)&&(identical(other.retryable, retryable) || other.retryable == retryable));
}


@override
int get hashCode => Object.hash(runtimeType,message,const DeepCollectionEquality().hash(cause),retryable);

@override
String toString() {
  return 'AppError.cancelled(message: $message, cause: $cause, retryable: $retryable)';
}


}

/// @nodoc
abstract mixin class $CanceledErrorCopyWith<$Res> implements $AppErrorCopyWith<$Res> {
  factory $CanceledErrorCopyWith(CanceledError value, $Res Function(CanceledError) _then) = _$CanceledErrorCopyWithImpl;
@override @useResult
$Res call({
 String message, Object? cause, bool retryable
});




}
/// @nodoc
class _$CanceledErrorCopyWithImpl<$Res>
    implements $CanceledErrorCopyWith<$Res> {
  _$CanceledErrorCopyWithImpl(this._self, this._then);

  final CanceledError _self;
  final $Res Function(CanceledError) _then;

/// Create a copy of AppError
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,Object? cause = freezed,Object? retryable = null,}) {
  return _then(CanceledError(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,cause: freezed == cause ? _self.cause : cause ,retryable: null == retryable ? _self.retryable : retryable // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class BusinessError implements AppError {
  const BusinessError({required this.message, this.cause, this.retryable = false});
  

@override final  String message;
@override final  Object? cause;
@override@JsonKey() final  bool retryable;

/// Create a copy of AppError
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BusinessErrorCopyWith<BusinessError> get copyWith => _$BusinessErrorCopyWithImpl<BusinessError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BusinessError&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other.cause, cause)&&(identical(other.retryable, retryable) || other.retryable == retryable));
}


@override
int get hashCode => Object.hash(runtimeType,message,const DeepCollectionEquality().hash(cause),retryable);

@override
String toString() {
  return 'AppError.business(message: $message, cause: $cause, retryable: $retryable)';
}


}

/// @nodoc
abstract mixin class $BusinessErrorCopyWith<$Res> implements $AppErrorCopyWith<$Res> {
  factory $BusinessErrorCopyWith(BusinessError value, $Res Function(BusinessError) _then) = _$BusinessErrorCopyWithImpl;
@override @useResult
$Res call({
 String message, Object? cause, bool retryable
});




}
/// @nodoc
class _$BusinessErrorCopyWithImpl<$Res>
    implements $BusinessErrorCopyWith<$Res> {
  _$BusinessErrorCopyWithImpl(this._self, this._then);

  final BusinessError _self;
  final $Res Function(BusinessError) _then;

/// Create a copy of AppError
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,Object? cause = freezed,Object? retryable = null,}) {
  return _then(BusinessError(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,cause: freezed == cause ? _self.cause : cause ,retryable: null == retryable ? _self.retryable : retryable // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class CustomError implements AppError {
  const CustomError({required this.message, this.errorCode, this.cause, this.retryable = false});
  

@override final  String message;
 final  String? errorCode;
@override final  Object? cause;
@override@JsonKey() final  bool retryable;

/// Create a copy of AppError
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CustomErrorCopyWith<CustomError> get copyWith => _$CustomErrorCopyWithImpl<CustomError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CustomError&&(identical(other.message, message) || other.message == message)&&(identical(other.errorCode, errorCode) || other.errorCode == errorCode)&&const DeepCollectionEquality().equals(other.cause, cause)&&(identical(other.retryable, retryable) || other.retryable == retryable));
}


@override
int get hashCode => Object.hash(runtimeType,message,errorCode,const DeepCollectionEquality().hash(cause),retryable);

@override
String toString() {
  return 'AppError.custom(message: $message, errorCode: $errorCode, cause: $cause, retryable: $retryable)';
}


}

/// @nodoc
abstract mixin class $CustomErrorCopyWith<$Res> implements $AppErrorCopyWith<$Res> {
  factory $CustomErrorCopyWith(CustomError value, $Res Function(CustomError) _then) = _$CustomErrorCopyWithImpl;
@override @useResult
$Res call({
 String message, String? errorCode, Object? cause, bool retryable
});




}
/// @nodoc
class _$CustomErrorCopyWithImpl<$Res>
    implements $CustomErrorCopyWith<$Res> {
  _$CustomErrorCopyWithImpl(this._self, this._then);

  final CustomError _self;
  final $Res Function(CustomError) _then;

/// Create a copy of AppError
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,Object? errorCode = freezed,Object? cause = freezed,Object? retryable = null,}) {
  return _then(CustomError(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,errorCode: freezed == errorCode ? _self.errorCode : errorCode // ignore: cast_nullable_to_non_nullable
as String?,cause: freezed == cause ? _self.cause : cause ,retryable: null == retryable ? _self.retryable : retryable // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
