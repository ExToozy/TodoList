import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:task38/features/auth/views/auth_page.dart';
import 'package:task38/features/registration/views/registration_page.dart';
import 'package:task38/features/user/views/add_task_page.dart';
import 'package:task38/features/user/views/edit_todo_page.dart';
import 'package:task38/features/user/views/todo_list_page.dart';
import 'package:task38/features/user/views/hello_page.dart';
import 'package:task38/repositories/models/todo.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: AuthRoute.page, initial: true),
        AutoRoute(page: HelloRoute.page),
        AutoRoute(page: TodoListRoute.page),
        AutoRoute(page: AddTaskRoute.page),
        AutoRoute(page: EditTodoRoute.page),
        AutoRoute(page: RegistrationRoute.page),
      ];
}
