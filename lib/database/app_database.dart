import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;
// ignore: depend_on_referenced_packages
import 'package:sqlite3/sqlite3.dart';
import 'package:sqlite3_flutter_libs/sqlite3_flutter_libs.dart';
import 'package:task38/database/todo_table.dart';
import 'package:task38/database/user_table.dart';
import 'package:task38/repositories/models/todo.dart';

part 'app_database.g.dart';

@DriftDatabase(tables: [TodoItems, UserItems])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  Future<List<TodoItem>> getTodos() async {
    return await select(todoItems).get();
  }

  Future<int> addTodo(Todo todo) async {
    final companion = TodoItemsCompanion.insert(
      userId: todo.userId,
      title: todo.title,
      description: todo.description,
      isComplete: todo.isComplete,
    );
    return await into(todoItems).insert(companion);
  }

  Future<int> deleteTodo(Todo todo) async {
    return await (delete(todoItems)
          ..where(
            (t) => t.id.equals(todo.id ?? -1),
          ))
        .go();
  }

  Future<bool> updateTodo(Todo todo) async {
    return await update(todoItems).replace(TodoItem(
        id: todo.id!,
        userId: todo.userId,
        title: todo.title,
        description: todo.description,
        isComplete: todo.isComplete));
  }

  Future<UserItem?> getUserOrNull(String email, String password) async {
    final user = await (select(userItems)
          ..where(
            (tbl) => tbl.email.equals(email) & tbl.password.equals(password),
          ))
        .getSingleOrNull();

    return user;
  }

  Future<UserItem?> isUserContainsInDB(String email) async {
    final user = await (select(userItems)
          ..where((tbl) => (tbl.email.equals(email))))
        .getSingleOrNull();

    return user;
  }

  Future<int> createUser(String email, String password) async {
    final companion =
        UserItemsCompanion.insert(email: email, password: password);
    return await into(userItems).insert(companion);
  }
}

class AppDatabaseSingleton {
  const AppDatabaseSingleton._();
  static final AppDatabase _instance = AppDatabase();
  static AppDatabase get instance => _instance;
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'todoAppDb.sqlite'));

    if (Platform.isAndroid) {
      await applyWorkaroundToOpenSqlite3OnOldAndroidVersions();
    }

    final cachebase = (await getTemporaryDirectory()).path;
    sqlite3.tempDirectory = cachebase;

    return NativeDatabase.createInBackground(file);
  });
}
