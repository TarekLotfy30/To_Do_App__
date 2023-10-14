import 'package:flutter/material.dart';
import 'package:todo/view/component/custom_text_widget.dart';
import 'package:todo/view/screen/to_do_list_screen/to_do_screen.dart';
import 'package:todo/view_model/cubit/to_do_cubit.dart';
import 'package:todo/view_model/utils/colors.dart';

class AddToDoButton extends StatelessWidget {
  const AddToDoButton({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit = ToDoCubit.get(context);
    return ElevatedButton(
      onPressed: () {
        cubit.addTodo();
        Navigator.of(context).pop(const ToDoScreen());
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primaryColor,
        elevation: 0,
        minimumSize: const Size(double.infinity, 60),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
      ),
      child: const TextCustom(
        data: "Add",
        color: AppColors.textIconColor,
        fontWeight: FontWeight.normal,
        fontSize: 16,
      ),
    );
  }
}
