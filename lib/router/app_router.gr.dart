// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    AddTaskRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AddTaskPage(),
      );
    },
    AuthRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AuthPage(),
      );
    },
    EditTodoRoute.name: (routeData) {
      final args = routeData.argsAs<EditTodoRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: EditTodoPage(
          key: args.key,
          todo: args.todo,
        ),
      );
    },
    HelloRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HelloPage(),
      );
    },
    RegistrationRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const RegistrationPage(),
      );
    },
    TodoListRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const TodoListPage(),
      );
    },
  };
}

/// generated route for
/// [AddTaskPage]
class AddTaskRoute extends PageRouteInfo<void> {
  const AddTaskRoute({List<PageRouteInfo>? children})
      : super(
          AddTaskRoute.name,
          initialChildren: children,
        );

  static const String name = 'AddTaskRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [AuthPage]
class AuthRoute extends PageRouteInfo<void> {
  const AuthRoute({List<PageRouteInfo>? children})
      : super(
          AuthRoute.name,
          initialChildren: children,
        );

  static const String name = 'AuthRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [EditTodoPage]
class EditTodoRoute extends PageRouteInfo<EditTodoRouteArgs> {
  EditTodoRoute({
    Key? key,
    required Todo todo,
    List<PageRouteInfo>? children,
  }) : super(
          EditTodoRoute.name,
          args: EditTodoRouteArgs(
            key: key,
            todo: todo,
          ),
          initialChildren: children,
        );

  static const String name = 'EditTodoRoute';

  static const PageInfo<EditTodoRouteArgs> page =
      PageInfo<EditTodoRouteArgs>(name);
}

class EditTodoRouteArgs {
  const EditTodoRouteArgs({
    this.key,
    required this.todo,
  });

  final Key? key;

  final Todo todo;

  @override
  String toString() {
    return 'EditTodoRouteArgs{key: $key, todo: $todo}';
  }
}

/// generated route for
/// [HelloPage]
class HelloRoute extends PageRouteInfo<void> {
  const HelloRoute({List<PageRouteInfo>? children})
      : super(
          HelloRoute.name,
          initialChildren: children,
        );

  static const String name = 'HelloRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [RegistrationPage]
class RegistrationRoute extends PageRouteInfo<void> {
  const RegistrationRoute({List<PageRouteInfo>? children})
      : super(
          RegistrationRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegistrationRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [TodoListPage]
class TodoListRoute extends PageRouteInfo<void> {
  const TodoListRoute({List<PageRouteInfo>? children})
      : super(
          TodoListRoute.name,
          initialChildren: children,
        );

  static const String name = 'TodoListRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
