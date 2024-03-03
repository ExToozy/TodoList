part of 'todo_bloc.dart';

@freezed
class TodoEvent with _$TodoEvent {
  const factory TodoEvent.load({required User user}) = _Load;

  const factory TodoEvent.add({
    required User user,
    required Todo todo,
  }) = _Add;

  const factory TodoEvent.delete({
    required User user,
    required Todo todo,
  }) = _TodoDelete;

  const factory TodoEvent.update({
    required User user,
    required Todo todo,
  }) = _TodoComplete;
}
