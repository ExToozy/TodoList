part of 'todo_bloc.dart';

@freezed
class TodoState with _$TodoState {
  const TodoState._();

  const factory TodoState.initial() = _Initial;

  const factory TodoState.loading() = _Loading;

  const factory TodoState.failure({
    required Object error,
  }) = _Failure;

  const factory TodoState.loaded({
    required List<Todo> todos,
    required User user,
  }) = _Loaded;
}
