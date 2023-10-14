import 'package:flutter/material.dart';
import 'package:todo/view_model/utils/colors.dart';

class TextFormFieldCustom extends StatelessWidget {
  final void Function()? onTap;
  final bool autofocus;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final String? labelText;
  final bool isMultiLines;
  final IconData? icon;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final bool readOnly;

  const TextFormFieldCustom({
    super.key,
    this.onTap,
    required this.labelText,
    this.autofocus = false,
    this.keyboardType = TextInputType.text,
    this.textInputAction = TextInputAction.next,
    this.isMultiLines = false,
    this.icon,
    this.validator,
    this.controller,
    this.readOnly = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 25.0),
      child: TextFormField(
        controller: controller,
        onTap: onTap,
        validator: validator,
        autofocus: autofocus,
        keyboardType: keyboardType,
        textInputAction: textInputAction,
        cursorColor: AppColors.primaryColor,
        minLines: 1,
        maxLines: isMultiLines ? 5 : 1,
        onTapOutside: (event) => FocusScope.of(context).unfocus(),
        style: const TextStyle(fontSize: 14),
        decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(14),
            ),
            borderSide: BorderSide(
              color: Color(0xff6C3428),
              width: 1,
            ),
          ),
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(14),
            ),
            borderSide: BorderSide(
              color: Color(0xff6C3428),
              width: 1,
            ),
          ),
          labelText: labelText,
          labelStyle: const TextStyle(fontSize: 14),
          floatingLabelStyle: const TextStyle(
            color: AppColors.darkPrimaryColor,
            fontSize: 17,
          ),
          prefixIcon: Icon(
            icon,
            color: AppColors.primaryColor,
          ),
        ),
        readOnly: readOnly,
      ),
    );
  }
}
