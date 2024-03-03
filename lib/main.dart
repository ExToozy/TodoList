import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:task38/features/auth/bloc/auth_bloc.dart';
import 'package:task38/features/registration/bloc/bloc/registration_bloc.dart';
import 'package:task38/features/user/bloc/todo_bloc.dart';
import 'package:task38/main_app/bloc/main_app_user_auth_bloc.dart';
import 'package:task38/repositories/todo_repository/i_todo_repository.dart';
import 'package:task38/repositories/todo_repository/todo_db_repository.dart';
import 'package:task38/repositories/user_repository/abstract_login_repository.dart';
import 'package:task38/repositories/user_repository/login_repository.dart';

import 'main_app/main_app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  GetIt.I.registerSingleton<ITodoRepository>(TodoDbRepository());
  GetIt.I.registerSingleton<AbstractUserRepository>(UserRepository());

  GetIt.I.registerSingleton(RegistrationBloc());
  GetIt.I.registerSingleton(MainAppUserAuthBloc());
  GetIt.I.registerSingleton(AuthBloc(GetIt.I.get<AbstractUserRepository>()));
  GetIt.I.registerSingleton(TodoBloc(GetIt.I.get<ITodoRepository>()));

  runApp(const MainApp());
}
