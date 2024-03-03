import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:task38/features/user/bloc/todo_bloc.dart';
import 'package:task38/features/user/widgets/todo_tile.dart';
import 'package:task38/main_app/bloc/main_app_user_auth_bloc.dart';
import 'package:task38/router/app_router.dart';

@RoutePage()
class TodoListPage extends StatefulWidget {
  const TodoListPage({super.key});

  @override
  State<TodoListPage> createState() => _TodoListPageState();
}

class _TodoListPageState extends State<TodoListPage> {
  final _todoBloc = GetIt.I.get<TodoBloc>();
  final _mainAppUserAuthBloc = GetIt.I.get<MainAppUserAuthBloc>();

  @override
  void initState() {
    _todoBloc.add(TodoEvent.load(user: _mainAppUserAuthBloc.state.user!));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<MainAppUserAuthBloc, MainAppUserAuthState>(
      bloc: _mainAppUserAuthBloc,
      listener: (context, state) {
        state.map(
          initial: (_) {},
          userAuthorized: (_) {},
          userUnauthorized: (_) {
            context.router.popUntilRoot();
          },
        );
      },
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text('ToDo List'),
          actions: [
            IconButton(
                onPressed: () => _mainAppUserAuthBloc
                    .add(const MainAppUserAuthEvent.userLogOut()),
                icon: const Icon(Icons.logout))
          ],
        ),
        body: Column(
          children: [
            BlocBuilder<TodoBloc, TodoState>(
              bloc: _todoBloc,
              builder: (context, state) {
                return state.when(
                  initial: () => const SizedBox(),
                  loading: () =>
                      const Center(child: CircularProgressIndicator()),
                  failure: (error) => Center(child: Text(error.toString())),
                  loaded: (todos, user) {
                    return Expanded(
                      child: ListView.separated(
                        itemCount: todos.length,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            child: TodoTile(
                              todo: todos[index],
                            ),
                            onTap: () => AutoRouter.of(context)
                                .push(EditTodoRoute(todo: todos[index])),
                          );
                        },
                        separatorBuilder: (BuildContext context, int index) =>
                            const Divider(),
                      ),
                    );
                  },
                );
              },
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () =>
                    AutoRouter.of(context).push(const AddTaskRoute()),
                child: const Text('Добавить задачу'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
