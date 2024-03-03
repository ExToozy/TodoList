import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:task38/repositories/models/todo.dart';
import 'package:task38/repositories/models/user.dart';
import 'package:task38/repositories/todo_repository/i_todo_repository.dart';
part 'todo_event.dart';
part 'todo_state.dart';
part 'todo_bloc.freezed.dart';

class TodoBloc extends Bloc<TodoEvent, TodoState> {
  final ITodoRepository _repository;

  TodoBloc(this._repository) : super(const _Initial()) {
    on<TodoEvent>(
      (event, emit) async {
        await event.map(
          load: (event) => _onLoad(event, emit),
          add: (event) => _onAdd(event, emit),
          delete: (event) => _onDelete(event, emit),
          update: (event) => _onUpdate(event, emit),
        );
      },
    );
  }

  Future<void> _onLoad(_Load event, Emitter<TodoState> emit) async {
    emit(const TodoState.loading());
    try {
      final todos = await _repository.getUserTodos(event.user.id!);
      emit(TodoState.loaded(
          user: event.user,
          todos: todos
            ..sort((a, b) =>
                (a.isComplete ? 1 : 0).compareTo(b.isComplete ? 1 : 0))));
    } catch (e) {
      log(e.toString());
      emit(TodoState.failure(error: e.toString()));
    }
  }

  Future<void> _onAdd(_Add event, Emitter<TodoState> emit) async {
    emit(const TodoState.loading());
    try {
      await _repository.addTodo(todo: event.todo);
      final todos = await _repository.getUserTodos(event.user.id!);
      emit(TodoState.loaded(
          user: event.user,
          todos: todos
            ..sort((a, b) =>
                (a.isComplete ? 1 : 0).compareTo(b.isComplete ? 1 : 0))));
    } catch (e) {
      log(e.toString());
      emit(TodoState.failure(error: e.toString()));
    }
  }

  Future<void> _onDelete(_TodoDelete event, Emitter<TodoState> emit) async {
    try {
      await _repository.deleteTodo(todo: event.todo);
      final todos = await _repository.getUserTodos(event.user.id!);
      emit(TodoState.loaded(
          user: event.user,
          todos: todos
            ..sort((a, b) =>
                (a.isComplete ? 1 : 0).compareTo(b.isComplete ? 1 : 0))));
    } catch (e) {
      log(e.toString());
      emit(TodoState.failure(error: e.toString()));
    }
  }

  _onUpdate(_TodoComplete event, Emitter<TodoState> emit) async {
    try {
      await _repository.updateTodo(todo: event.todo);
      final todos = await _repository.getUserTodos(event.user.id!);
      emit(TodoState.loaded(
          user: event.user,
          todos: todos
            ..sort((a, b) =>
                (a.isComplete ? 1 : 0).compareTo(b.isComplete ? 1 : 0))));
    } catch (e) {
      log(e.toString());
      emit(TodoState.failure(error: e.toString()));
    }
  }
}
