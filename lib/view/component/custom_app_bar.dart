import 'package:flutter/material.dart';
import 'package:todo/view/component/custom_text_widget.dart';
import 'package:todo/view_model/utils/colors.dart';

class AppBarCustom extends StatelessWidget implements PreferredSizeWidget {
  const AppBarCustom({
    super.key,
    required this.data,
    this.backgroundColor = AppColors.darkPrimaryColor,
    this.color = AppColors.textIconColor,
  });

  final Color backgroundColor;
  final String data;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor,
      centerTitle: true,
      elevation: 0,
      toolbarHeight: 60,
      title: TextCustom(
        data: data,
        color: color,
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(60);
}
