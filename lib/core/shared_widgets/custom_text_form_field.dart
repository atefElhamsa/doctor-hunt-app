import 'package:doctor_hunt_app/core/shared_widgets_model/text_field_model.dart';
import 'package:flutter/material.dart';
import '../utils/app_colors.dart';
import '../utils/my_validators.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({super.key, required this.textFieldModel});
  final TextFieldModel textFieldModel;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: textFieldModel.onTap,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      keyboardType: TextInputType.name,
      controller: textFieldModel.controller,
      validator: (value) => MyValidators.displayNameValidator(value),
      decoration: InputDecoration(
        filled: true,
        fillColor: AppColors.white,
        suffixIcon: GestureDetector(
          onTap: () => textFieldModel.controller.clear(),
          child: const Icon(Icons.clear, color: AppColors.grey),
        ),
        prefixIcon: const Icon(Icons.search, color: AppColors.grey),
        hintText: textFieldModel.hintText,
        hintStyle: const TextStyle(color: AppColors.grey),
        enabledBorder: outlineInputBorder(),
        focusedBorder: outlineInputBorder(),
        errorBorder: outlineInputBorder(),
        focusedErrorBorder: outlineInputBorder(),
      ),
    );
  }
}

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(6),
    borderSide: const BorderSide(color: AppColors.white),
  );
}