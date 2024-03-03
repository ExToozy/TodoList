import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:task38/features/user/bloc/todo_bloc.dart';
import 'package:task38/main_app/bloc/main_app_user_auth_bloc.dart';
import 'package:task38/repositories/models/todo.dart';

@RoutePage()
class AddTaskPage extends StatefulWidget {
  const AddTaskPage({super.key});

  @override
  State<AddTaskPage> createState() => _AddTaskPageState();
}

class _AddTaskPageState extends State<AddTaskPage> {
  final TextEditingController titleController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  final _todoBloc = GetIt.I.get<TodoBloc>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Добавить задачу'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Название:'),
              TextField(
                controller: titleController,
              ),
              const SizedBox(height: 16.0),
              const Text('Описание:'),
              TextField(
                minLines: 1,
                maxLines: 10,
                controller: descriptionController,
              ),
              const SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () => addTodoBtnPressed(context),
                child: const Text('Добавить'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void addTodoBtnPressed(BuildContext context) {
    String title = titleController.text;
    String description = descriptionController.text;
    if (title.isNotEmpty) {
      final user = GetIt.I.get<MainAppUserAuthBloc>().state.user;
      if (user != null) {
        final newTodo = Todo(
            userId: user.id!,
            title: title,
            description: description,
            isComplete: false);
        _todoBloc.add(TodoEvent.add(
            todo: newTodo,
            user: GetIt.I.get<MainAppUserAuthBloc>().state.user!));
        AutoRouter.of(context).pop();
      }
    } else {
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text('Введите название!')));
    }
  }
}
