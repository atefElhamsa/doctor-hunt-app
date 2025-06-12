import 'package:doctor_hunt_app/core/shared_widgets_model/button_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../shared_widgets_model/text_model.dart';
import '../utils/app_colors.dart';
import '../utils/app_size.dart';
import 'custom_text.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({super.key, required this.buttonModel});
  final ButtonModel buttonModel;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: buttonModel.onTap,
      child: CustomText(
        textModel: TextModel(
          title: buttonModel.title,
          color: AppColors.grey,
          fontWeight: FontWeight.w400,
          fontSize: AppSize.s14.sp,
        ),
      ),
    );
  }
}
