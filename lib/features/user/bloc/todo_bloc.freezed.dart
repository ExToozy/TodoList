// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TodoEvent {
  User get user => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) load,
    required TResult Function(User user, Todo todo) add,
    required TResult Function(User user, Todo todo) delete,
    required TResult Function(User user, Todo todo) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User user)? load,
    TResult? Function(User user, Todo todo)? add,
    TResult? Function(User user, Todo todo)? delete,
    TResult? Function(User user, Todo todo)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? load,
    TResult Function(User user, Todo todo)? add,
    TResult Function(User user, Todo todo)? delete,
    TResult Function(User user, Todo todo)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Load value) load,
    required TResult Function(_Add value) add,
    required TResult Function(_TodoDelete value) delete,
    required TResult Function(_TodoComplete value) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Load value)? load,
    TResult? Function(_Add value)? add,
    TResult? Function(_TodoDelete value)? delete,
    TResult? Function(_TodoComplete value)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_Add value)? add,
    TResult Function(_TodoDelete value)? delete,
    TResult Function(_TodoComplete value)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TodoEventCopyWith<TodoEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoEventCopyWith<$Res> {
  factory $TodoEventCopyWith(TodoEvent value, $Res Function(TodoEvent) then) =
      _$TodoEventCopyWithImpl<$Res, TodoEvent>;
  @useResult
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$TodoEventCopyWithImpl<$Res, $Val extends TodoEvent>
    implements $TodoEventCopyWith<$Res> {
  _$TodoEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_value.copyWith(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LoadImplCopyWith<$Res> implements $TodoEventCopyWith<$Res> {
  factory _$$LoadImplCopyWith(
          _$LoadImpl value, $Res Function(_$LoadImpl) then) =
      __$$LoadImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({User user});

  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$LoadImplCopyWithImpl<$Res>
    extends _$TodoEventCopyWithImpl<$Res, _$LoadImpl>
    implements _$$LoadImplCopyWith<$Res> {
  __$$LoadImplCopyWithImpl(_$LoadImpl _value, $Res Function(_$LoadImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$LoadImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc

class _$LoadImpl implements _Load {
  const _$LoadImpl({required this.user});

  @override
  final User user;

  @override
  String toString() {
    return 'TodoEvent.load(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadImplCopyWith<_$LoadImpl> get copyWith =>
      __$$LoadImplCopyWithImpl<_$LoadImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) load,
    required TResult Function(User user, Todo todo) add,
    required TResult Function(User user, Todo todo) delete,
    required TResult Function(User user, Todo todo) update,
  }) {
    return load(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User user)? load,
    TResult? Function(User user, Todo todo)? add,
    TResult? Function(User user, Todo todo)? delete,
    TResult? Function(User user, Todo todo)? update,
  }) {
    return load?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? load,
    TResult Function(User user, Todo todo)? add,
    TResult Function(User user, Todo todo)? delete,
    TResult Function(User user, Todo todo)? update,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Load value) load,
    required TResult Function(_Add value) add,
    required TResult Function(_TodoDelete value) delete,
    required TResult Function(_TodoComplete value) update,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Load value)? load,
    TResult? Function(_Add value)? add,
    TResult? Function(_TodoDelete value)? delete,
    TResult? Function(_TodoComplete value)? update,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_Add value)? add,
    TResult Function(_TodoDelete value)? delete,
    TResult Function(_TodoComplete value)? update,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class _Load implements TodoEvent {
  const factory _Load({required final User user}) = _$LoadImpl;

  @override
  User get user;
  @override
  @JsonKey(ignore: true)
  _$$LoadImplCopyWith<_$LoadImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddImplCopyWith<$Res> implements $TodoEventCopyWith<$Res> {
  factory _$$AddImplCopyWith(_$AddImpl value, $Res Function(_$AddImpl) then) =
      __$$AddImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({User user, Todo todo});

  @override
  $UserCopyWith<$Res> get user;
  $TodoCopyWith<$Res> get todo;
}

/// @nodoc
class __$$AddImplCopyWithImpl<$Res>
    extends _$TodoEventCopyWithImpl<$Res, _$AddImpl>
    implements _$$AddImplCopyWith<$Res> {
  __$$AddImplCopyWithImpl(_$AddImpl _value, $Res Function(_$AddImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? todo = null,
  }) {
    return _then(_$AddImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      todo: null == todo
          ? _value.todo
          : todo // ignore: cast_nullable_to_non_nullable
              as Todo,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TodoCopyWith<$Res> get todo {
    return $TodoCopyWith<$Res>(_value.todo, (value) {
      return _then(_value.copyWith(todo: value));
    });
  }
}

/// @nodoc

class _$AddImpl implements _Add {
  const _$AddImpl({required this.user, required this.todo});

  @override
  final User user;
  @override
  final Todo todo;

  @override
  String toString() {
    return 'TodoEvent.add(user: $user, todo: $todo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.todo, todo) || other.todo == todo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user, todo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddImplCopyWith<_$AddImpl> get copyWith =>
      __$$AddImplCopyWithImpl<_$AddImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) load,
    required TResult Function(User user, Todo todo) add,
    required TResult Function(User user, Todo todo) delete,
    required TResult Function(User user, Todo todo) update,
  }) {
    return add(user, todo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User user)? load,
    TResult? Function(User user, Todo todo)? add,
    TResult? Function(User user, Todo todo)? delete,
    TResult? Function(User user, Todo todo)? update,
  }) {
    return add?.call(user, todo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? load,
    TResult Function(User user, Todo todo)? add,
    TResult Function(User user, Todo todo)? delete,
    TResult Function(User user, Todo todo)? update,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(user, todo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Load value) load,
    required TResult Function(_Add value) add,
    required TResult Function(_TodoDelete value) delete,
    required TResult Function(_TodoComplete value) update,
  }) {
    return add(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Load value)? load,
    TResult? Function(_Add value)? add,
    TResult? Function(_TodoDelete value)? delete,
    TResult? Function(_TodoComplete value)? update,
  }) {
    return add?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_Add value)? add,
    TResult Function(_TodoDelete value)? delete,
    TResult Function(_TodoComplete value)? update,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(this);
    }
    return orElse();
  }
}

abstract class _Add implements TodoEvent {
  const factory _Add({required final User user, required final Todo todo}) =
      _$AddImpl;

  @override
  User get user;
  Todo get todo;
  @override
  @JsonKey(ignore: true)
  _$$AddImplCopyWith<_$AddImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TodoDeleteImplCopyWith<$Res>
    implements $TodoEventCopyWith<$Res> {
  factory _$$TodoDeleteImplCopyWith(
          _$TodoDeleteImpl value, $Res Function(_$TodoDeleteImpl) then) =
      __$$TodoDeleteImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({User user, Todo todo});

  @override
  $UserCopyWith<$Res> get user;
  $TodoCopyWith<$Res> get todo;
}

/// @nodoc
class __$$TodoDeleteImplCopyWithImpl<$Res>
    extends _$TodoEventCopyWithImpl<$Res, _$TodoDeleteImpl>
    implements _$$TodoDeleteImplCopyWith<$Res> {
  __$$TodoDeleteImplCopyWithImpl(
      _$TodoDeleteImpl _value, $Res Function(_$TodoDeleteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? todo = null,
  }) {
    return _then(_$TodoDeleteImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      todo: null == todo
          ? _value.todo
          : todo // ignore: cast_nullable_to_non_nullable
              as Todo,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TodoCopyWith<$Res> get todo {
    return $TodoCopyWith<$Res>(_value.todo, (value) {
      return _then(_value.copyWith(todo: value));
    });
  }
}

/// @nodoc

class _$TodoDeleteImpl implements _TodoDelete {
  const _$TodoDeleteImpl({required this.user, required this.todo});

  @override
  final User user;
  @override
  final Todo todo;

  @override
  String toString() {
    return 'TodoEvent.delete(user: $user, todo: $todo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodoDeleteImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.todo, todo) || other.todo == todo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user, todo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TodoDeleteImplCopyWith<_$TodoDeleteImpl> get copyWith =>
      __$$TodoDeleteImplCopyWithImpl<_$TodoDeleteImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) load,
    required TResult Function(User user, Todo todo) add,
    required TResult Function(User user, Todo todo) delete,
    required TResult Function(User user, Todo todo) update,
  }) {
    return delete(user, todo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User user)? load,
    TResult? Function(User user, Todo todo)? add,
    TResult? Function(User user, Todo todo)? delete,
    TResult? Function(User user, Todo todo)? update,
  }) {
    return delete?.call(user, todo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? load,
    TResult Function(User user, Todo todo)? add,
    TResult Function(User user, Todo todo)? delete,
    TResult Function(User user, Todo todo)? update,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(user, todo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Load value) load,
    required TResult Function(_Add value) add,
    required TResult Function(_TodoDelete value) delete,
    required TResult Function(_TodoComplete value) update,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Load value)? load,
    TResult? Function(_Add value)? add,
    TResult? Function(_TodoDelete value)? delete,
    TResult? Function(_TodoComplete value)? update,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_Add value)? add,
    TResult Function(_TodoDelete value)? delete,
    TResult Function(_TodoComplete value)? update,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class _TodoDelete implements TodoEvent {
  const factory _TodoDelete(
      {required final User user, required final Todo todo}) = _$TodoDeleteImpl;

  @override
  User get user;
  Todo get todo;
  @override
  @JsonKey(ignore: true)
  _$$TodoDeleteImplCopyWith<_$TodoDeleteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TodoCompleteImplCopyWith<$Res>
    implements $TodoEventCopyWith<$Res> {
  factory _$$TodoCompleteImplCopyWith(
          _$TodoCompleteImpl value, $Res Function(_$TodoCompleteImpl) then) =
      __$$TodoCompleteImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({User user, Todo todo});

  @override
  $UserCopyWith<$Res> get user;
  $TodoCopyWith<$Res> get todo;
}

/// @nodoc
class __$$TodoCompleteImplCopyWithImpl<$Res>
    extends _$TodoEventCopyWithImpl<$Res, _$TodoCompleteImpl>
    implements _$$TodoCompleteImplCopyWith<$Res> {
  __$$TodoCompleteImplCopyWithImpl(
      _$TodoCompleteImpl _value, $Res Function(_$TodoCompleteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? todo = null,
  }) {
    return _then(_$TodoCompleteImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      todo: null == todo
          ? _value.todo
          : todo // ignore: cast_nullable_to_non_nullable
              as Todo,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TodoCopyWith<$Res> get todo {
    return $TodoCopyWith<$Res>(_value.todo, (value) {
      return _then(_value.copyWith(todo: value));
    });
  }
}

/// @nodoc

class _$TodoCompleteImpl implements _TodoComplete {
  const _$TodoCompleteImpl({required this.user, required this.todo});

  @override
  final User user;
  @override
  final Todo todo;

  @override
  String toString() {
    return 'TodoEvent.update(user: $user, todo: $todo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodoCompleteImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.todo, todo) || other.todo == todo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user, todo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TodoCompleteImplCopyWith<_$TodoCompleteImpl> get copyWith =>
      __$$TodoCompleteImplCopyWithImpl<_$TodoCompleteImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) load,
    required TResult Function(User user, Todo todo) add,
    required TResult Function(User user, Todo todo) delete,
    required TResult Function(User user, Todo todo) update,
  }) {
    return update(user, todo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User user)? load,
    TResult? Function(User user, Todo todo)? add,
    TResult? Function(User user, Todo todo)? delete,
    TResult? Function(User user, Todo todo)? update,
  }) {
    return update?.call(user, todo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? load,
    TResult Function(User user, Todo todo)? add,
    TResult Function(User user, Todo todo)? delete,
    TResult Function(User user, Todo todo)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(user, todo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Load value) load,
    required TResult Function(_Add value) add,
    required TResult Function(_TodoDelete value) delete,
    required TResult Function(_TodoComplete value) update,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Load value)? load,
    TResult? Function(_Add value)? add,
    TResult? Function(_TodoDelete value)? delete,
    TResult? Function(_TodoComplete value)? update,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_Add value)? add,
    TResult Function(_TodoDelete value)? delete,
    TResult Function(_TodoComplete value)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class _TodoComplete implements TodoEvent {
  const factory _TodoComplete(
      {required final User user,
      required final Todo todo}) = _$TodoCompleteImpl;

  @override
  User get user;
  Todo get todo;
  @override
  @JsonKey(ignore: true)
  _$$TodoCompleteImplCopyWith<_$TodoCompleteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TodoState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Object error) failure,
    required TResult Function(List<Todo> todos, User user) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Object error)? failure,
    TResult? Function(List<Todo> todos, User user)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Object error)? failure,
    TResult Function(List<Todo> todos, User user)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Loaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Loaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoStateCopyWith<$Res> {
  factory $TodoStateCopyWith(TodoState value, $Res Function(TodoState) then) =
      _$TodoStateCopyWithImpl<$Res, TodoState>;
}

/// @nodoc
class _$TodoStateCopyWithImpl<$Res, $Val extends TodoState>
    implements $TodoStateCopyWith<$Res> {
  _$TodoStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$TodoStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl extends _Initial {
  const _$InitialImpl() : super._();

  @override
  String toString() {
    return 'TodoState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Object error) failure,
    required TResult Function(List<Todo> todos, User user) loaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Object error)? failure,
    TResult? Function(List<Todo> todos, User user)? loaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Object error)? failure,
    TResult Function(List<Todo> todos, User user)? loaded,
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
    required TResult Function(_Loading value) loading,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Loaded value) loaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Loaded value)? loaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial extends TodoState {
  const factory _Initial() = _$InitialImpl;
  const _Initial._() : super._();
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$TodoStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl extends _Loading {
  const _$LoadingImpl() : super._();

  @override
  String toString() {
    return 'TodoState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Object error) failure,
    required TResult Function(List<Todo> todos, User user) loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Object error)? failure,
    TResult? Function(List<Todo> todos, User user)? loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Object error)? failure,
    TResult Function(List<Todo> todos, User user)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Loaded value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Loaded value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading extends TodoState {
  const factory _Loading() = _$LoadingImpl;
  const _Loading._() : super._();
}

/// @nodoc
abstract class _$$FailureImplCopyWith<$Res> {
  factory _$$FailureImplCopyWith(
          _$FailureImpl value, $Res Function(_$FailureImpl) then) =
      __$$FailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object error});
}

/// @nodoc
class __$$FailureImplCopyWithImpl<$Res>
    extends _$TodoStateCopyWithImpl<$Res, _$FailureImpl>
    implements _$$FailureImplCopyWith<$Res> {
  __$$FailureImplCopyWithImpl(
      _$FailureImpl _value, $Res Function(_$FailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$FailureImpl(
      error: null == error ? _value.error : error,
    ));
  }
}

/// @nodoc

class _$FailureImpl extends _Failure {
  const _$FailureImpl({required this.error}) : super._();

  @override
  final Object error;

  @override
  String toString() {
    return 'TodoState.failure(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureImpl &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      __$$FailureImplCopyWithImpl<_$FailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Object error) failure,
    required TResult Function(List<Todo> todos, User user) loaded,
  }) {
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Object error)? failure,
    TResult? Function(List<Todo> todos, User user)? loaded,
  }) {
    return failure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Object error)? failure,
    TResult Function(List<Todo> todos, User user)? loaded,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Loaded value) loaded,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Loaded value)? loaded,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure extends TodoState {
  const factory _Failure({required final Object error}) = _$FailureImpl;
  const _Failure._() : super._();

  Object get error;
  @JsonKey(ignore: true)
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Todo> todos, User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$TodoStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todos = null,
    Object? user = null,
  }) {
    return _then(_$LoadedImpl(
      todos: null == todos
          ? _value._todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<Todo>,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$LoadedImpl extends _Loaded {
  const _$LoadedImpl({required final List<Todo> todos, required this.user})
      : _todos = todos,
        super._();

  final List<Todo> _todos;
  @override
  List<Todo> get todos {
    if (_todos is EqualUnmodifiableListView) return _todos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_todos);
  }

  @override
  final User user;

  @override
  String toString() {
    return 'TodoState.loaded(todos: $todos, user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            const DeepCollectionEquality().equals(other._todos, _todos) &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_todos), user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Object error) failure,
    required TResult Function(List<Todo> todos, User user) loaded,
  }) {
    return loaded(todos, user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Object error)? failure,
    TResult? Function(List<Todo> todos, User user)? loaded,
  }) {
    return loaded?.call(todos, user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Object error)? failure,
    TResult Function(List<Todo> todos, User user)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(todos, user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Loaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Loaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded extends TodoState {
  const factory _Loaded(
      {required final List<Todo> todos,
      required final User user}) = _$LoadedImpl;
  const _Loaded._() : super._();

  List<Todo> get todos;
  User get user;
  @JsonKey(ignore: true)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
