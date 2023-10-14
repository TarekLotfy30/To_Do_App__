import 'package:flutter/material.dart';
import 'package:todo/view/component/custom%20_navigate.dart';
import 'package:todo/view/screen/add_to_do_item_screen/add_to_do_screen.dart';
import 'package:todo/view_model/utils/colors.dart';

class Add extends StatelessWidget {
  const Add({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        navigateTo(context, const AddToDoItem());
      },
      backgroundColor: AppColors.primaryColor,
      elevation: 0,
      child: const Icon(
        Icons.add,
      ),
    );
  }
}
