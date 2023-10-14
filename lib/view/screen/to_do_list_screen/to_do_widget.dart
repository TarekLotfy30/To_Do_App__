import 'package:flutter/material.dart';
import 'package:todo/model/task_model.dart';
import 'package:todo/view/component/custom_text_widget.dart';
import 'package:todo/view_model/utils/colors.dart';

class ToDoWidget extends StatelessWidget {
  final TaskModel toDoItem;

  const ToDoWidget({super.key, required this.toDoItem});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {},
      contentPadding: const EdgeInsets.all(12),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
        side: BorderSide(
          color: AppColors.lightPrimaryColor,
          width: 1.4,
        ),
      ),
      title: Padding(
        padding: const EdgeInsets.only(bottom: 12),
        child: TextCustom(
          data: toDoItem.title,
          color: AppColors.primaryTextColor,
          fontWeight: FontWeight.w500,
          fontSize: 18,
        ),
      ),
      subtitle: toDoItem.description != null
          ? TextCustom(
              data: toDoItem.description,
              color: AppColors.secondaryTextColor,
              fontWeight: FontWeight.w400,
              fontSize: 14,
            )
          : null,
    );
  }
}
