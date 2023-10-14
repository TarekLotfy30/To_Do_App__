import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/view/component/custom_app_bar.dart';
import 'package:todo/view/screen/to_do_list_screen/add_button.dart';
import 'package:todo/view/screen/to_do_list_screen/to_do_widget.dart';
import 'package:todo/view_model/cubit/to_do_cubit.dart';

import '../../../view_model/cubit/to_do_states.dart';
import '../../../view_model/utils/colors.dart';

class ToDoScreen extends StatelessWidget {
  const ToDoScreen({super.key});
//sss
  @override
  Widget build(BuildContext context) {
    var cubit = ToDoCubit.get(context);
    return Scaffold(
      backgroundColor: AppColors.textIconColor,
      appBar: const AppBarCustom(data: "To-Do List"),
      floatingActionButton: const Add(),
      body: BlocConsumer<ToDoCubit, ToDoStates>(
        listener: (BuildContext context, state) {},
        builder: (BuildContext context, state) {
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: ListView.separated(
              itemCount: cubit.todos.length,
              itemBuilder: (context, index) =>
                  ToDoWidget(toDoItem: cubit.todos[index]),
              separatorBuilder: (context, index) => const SizedBox(height: 10),
            ),
          );
        },
      ),
    );
  }
}
