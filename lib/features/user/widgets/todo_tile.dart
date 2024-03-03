import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:task38/features/user/bloc/todo_bloc.dart';
import 'package:task38/main_app/bloc/main_app_user_auth_bloc.dart';
import 'package:task38/repositories/models/todo.dart';
import 'package:task38/router/app_router.dart';

class TodoTile extends StatefulWidget {
  const TodoTile({
    super.key,
    required this.todo,
  });

  final Todo todo;

  @override
  State<TodoTile> createState() => _TodoTileState();
}

class _TodoTileState extends State<TodoTile> {
  final _todoBloc = GetIt.I.get<TodoBloc>();

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        widget.todo.title,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
          decoration:
              widget.todo.isComplete ? TextDecoration.lineThrough : null,
        ),
      ),
      subtitle: Text(
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        widget.todo.description,
      ),
      leading: Checkbox(
        value: widget.todo.isComplete,
        onChanged: (value) {
          _todoBloc.add(TodoEvent.update(
            user: GetIt.I.get<MainAppUserAuthBloc>().state.user!,
            todo: widget.todo.copyWith(isComplete: value!),
          ));
        },
      ),
      trailing: IconButton(
        icon: const Icon(
          Icons.arrow_forward_ios,
          color: Colors.black,
          size: 30,
        ),
        onPressed: () {
          AutoRouter.of(context).push(EditTodoRoute(todo: widget.todo));
        },
      ),
    );
  }
}
