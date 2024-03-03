import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo.freezed.dart';

@freezed
class Todo with _$Todo {
  const factory Todo({
    int? id,
    required int userId,
    required String title,
    required String description,
    @Default(false) bool isComplete,
  }) = _Todo;
}
