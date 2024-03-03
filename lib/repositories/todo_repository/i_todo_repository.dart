import 'package:task38/repositories/models/todo.dart';

abstract class ITodoRepository {
  Future<List<Todo>> getUserTodos(int userId);
  Future<void> addTodo({required Todo todo});
  Future<void> updateTodo({required Todo todo});
  Future<void> deleteTodo({required Todo todo});
}
