import 'package:task38/database/app_database.dart';
import 'package:task38/repositories/models/todo.dart';
import 'package:task38/repositories/todo_repository/i_todo_repository.dart';

class TodoDbRepository implements ITodoRepository {
  final db = AppDatabaseSingleton.instance;

  @override
  Future<List<Todo>> getUserTodos(int userId) async {
    try {
      final items = await db.getTodos();
      final todos = items
          .map(
            (dbItem) => Todo(
                id: dbItem.id,
                userId: dbItem.userId,
                title: dbItem.title,
                description: dbItem.description,
                isComplete: dbItem.isComplete),
          )
          .where((todo) => todo.userId == userId)
          .toList();
      return todos;
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<void> addTodo({required Todo todo}) async {
    try {
      await db.addTodo(todo);
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<void> updateTodo({required Todo todo}) async {
    try {
      await db.updateTodo(todo);
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<void> deleteTodo({required Todo todo}) async {
    try {
      await db.deleteTodo(todo);
    } catch (_) {
      rethrow;
    }
  }
}
