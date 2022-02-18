
import 'package:hey_task/domain/domain.dart';

abstract class ITodoRepository{
  Future<List<Todo>> getAllTodos();
  Stream<List<Todo>> watchTodos();
  Stream<List<Todo>> getCompletedTodos();
  Future<List<Todo>> getTodosByDate(DateTime dateTime);
  Future<List<Todo>> getCompletedTodosByDate(DateTime dateTime);
  Future<void> markTodoCompleted(Todo todo);
  Future<List<Todo>> getTodosByCategory(Category category);
  Future<List<SubTask>> getAllTaskSubtasks(int todoId);
  Future<void> insertTodo(Todo todo);
  Future<void> deleteTodo(Todo todo);
}