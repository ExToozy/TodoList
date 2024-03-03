import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:task38/features/user/bloc/todo_bloc.dart';
import 'package:task38/main_app/bloc/main_app_user_auth_bloc.dart';
import 'package:task38/repositories/models/todo.dart';

@RoutePage()
class EditTodoPage extends StatefulWidget {
  final Todo todo;

  const EditTodoPage({super.key, required this.todo});

  @override
  State<EditTodoPage> createState() => _EditTodoPageState();
}

class _EditTodoPageState extends State<EditTodoPage> {
  late TextEditingController _titleController;
  late TextEditingController _descriptionController;
  final TodoBloc _todoBloc = GetIt.I.get<TodoBloc>();

  @override
  void initState() {
    super.initState();
    _titleController = TextEditingController(text: widget.todo.title);
    _descriptionController =
        TextEditingController(text: widget.todo.description);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Изменить задачу'),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.delete_forever,
              color: Colors.red,
              size: 30,
            ),
            onPressed: () => deleteTodoBtnPressed(context),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: _titleController,
              decoration: const InputDecoration(labelText: 'Название'),
            ),
            const SizedBox(height: 16),
            TextField(
              minLines: 1,
              maxLines: 10,
              controller: _descriptionController,
              decoration: const InputDecoration(labelText: 'Описание'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => changeTodoBtnPressed(context),
              child: const Text('Изменить задачу'),
            ),
          ],
        ),
      ),
    );
  }

  void deleteTodoBtnPressed(BuildContext context) {
    _todoBloc.add(TodoEvent.delete(
        todo: widget.todo,
        user: GetIt.I.get<MainAppUserAuthBloc>().state.user!));
    AutoRouter.of(context).pop();
  }

  void changeTodoBtnPressed(BuildContext context) {
    String title = _titleController.text;
    String description = _descriptionController.text;
    if (title.isNotEmpty) {
      final newTodo =
          widget.todo.copyWith(title: title, description: description);
      _todoBloc.add(TodoEvent.update(
          todo: newTodo, user: GetIt.I.get<MainAppUserAuthBloc>().state.user!));
      AutoRouter.of(context).pop();
    } else {
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text('Введите название!')));
    }
  }
}
