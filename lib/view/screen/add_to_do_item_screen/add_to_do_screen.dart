import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:todo/view/component/custom_app_bar.dart';
import 'package:todo/view/screen/add_to_do_item_screen/add_todo_button.dart';
import 'package:todo/view_model/cubit/to_do_cubit.dart';
import 'package:todo/view_model/utils/colors.dart';

import 'text_form_field_custom.dart';

class AddToDoItem extends StatelessWidget {
  const AddToDoItem({super.key});
  @override
  Widget build(BuildContext context) {
    var cubit = ToDoCubit.get(context);
    return Scaffold(
      appBar: const AppBarCustom(
        data: "Add To-Do Item",
      ),
      body: Form(
        key: cubit.formKey,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      //title of the task section
                      TextFormFieldCustom(
                        controller: cubit.titleController,
                        labelText: "title",
                        validator: (value) {},
                        autofocus: true,
                        icon: Icons.text_format_outlined,
                      ),
                      //description of the task section
                      TextFormFieldCustom(
                        controller: cubit.descriptionController,
                        labelText: "Description",
                        validator: (value) {},
                        icon: Icons.info_outline,
                        isMultiLines: true,
                        textInputAction: TextInputAction.done,
                      ),
                      //start date of the task section
                      TextFormFieldCustom(
                        controller: cubit.startDateController,
                        labelText: "Start Date",
                        validator: (value) {},
                        onTap: () {
                          showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime
                                .now(), // Set the first selectable date to today
                            lastDate: DateTime.now().add(
                              const Duration(
                                days: 365 * 5,
                              ),
                            ), // Set the last selectable date to 5 years from now
                            builder: (context, child) {
                              return Theme(
                                data: ThemeData.light().copyWith(
                                  colorScheme: ColorScheme.light(
                                    primary: AppColors
                                        .primaryColor, // <-- Change to your desired color here
                                  ),
                                ), // This will change to light theme.
                                child: child!,
                              );
                            },
                          ).then((value) {
                            if (value != null) {
                              cubit.startDateController.text =
                                  DateFormat.yMMMd().format(value);
                            }
                          });
                        },
                        icon: Icons.date_range_outlined,
                        readOnly: true,
                      ),
                      //end date of the task section
                      TextFormFieldCustom(
                        controller: cubit.lastDateController,
                        labelText: "last Date",
                        validator: (value) {},
                        onTap: () {
                          showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime
                                .now(), // Set the first selectable date to today
                            lastDate: DateTime.now().add(
                              const Duration(
                                days: 365 * 5,
                              ),
                            ), // Set the last selectable date to 5 years from now
                            builder: (context, child) {
                              return Theme(
                                data: ThemeData.light().copyWith(
                                  colorScheme: ColorScheme.light(
                                    primary: AppColors
                                        .primaryColor, // <-- Change to your desired color here
                                  ),
                                ), // This will change to light theme.
                                child: child!,
                              );
                            },
                          ).then((value) {
                            if (value != null) {
                              cubit.lastDateController.text =
                                  DateFormat.yMMMd().format(value);
                            }
                          });
                        },
                        readOnly: true,
                        icon: Icons.dark_mode_outlined,
                      ),
                    ],
                  ),
                ),
              ),
              AddToDoButton(),
            ],
          ),
        ),
      ),
    );
  }
}
