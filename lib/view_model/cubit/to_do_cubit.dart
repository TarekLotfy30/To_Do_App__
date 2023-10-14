import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/model/task_model.dart';

import 'to_do_states.dart';

class ToDoCubit extends Cubit<ToDoStates> {
  ToDoCubit() : super(ToDoIntialState());

  static ToDoCubit get(context) => BlocProvider.of<ToDoCubit>(context);

  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController startDateController = TextEditingController();
  TextEditingController lastDateController = TextEditingController();

  List<TaskModel> todos = [
    TaskModel(title: 'Task 1', description: "ay haga"),
  ];

  void addTodo() {
    TaskModel todoObject = TaskModel(
      title: titleController.text,
      description: descriptionController.text,
      firstDate: startDateController.text,
      lastDate: lastDateController.text,
    );
    todos.add(todoObject);
    reset();
    emit(AddToDoState());
  }

  void reset() {
    titleController.clear();
    descriptionController.clear();
    startDateController.clear();
    lastDateController.clear();
  }
}
