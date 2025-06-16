import 'package:doctor_hunt_app/core/shared_widgets_model/button_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../shared_widgets_model/text_model.dart';
import '../utils/app_colors.dart';
import '../utils/app_padding.dart';
import '../utils/app_size.dart';
import 'custom_text.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.buttonModel});
  final ButtonModel buttonModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: buttonModel.onTap,
      child: Container(
        margin: EdgeInsets.symmetric(
          horizontal: buttonModel.padding ?? AppPadding.p20,
        ),
        height: buttonModel.height ?? AppSize.s54,
        decoration: BoxDecoration(
          color: buttonModel.color ?? AppColors.materialButtonColor,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: buttonModel.borderColor ?? AppColors.transparent,
          ),
        ),
        child: Center(
          child: CustomText(
            textModel: TextModel(
              title: buttonModel.title,
              color: buttonModel.textColor ?? AppColors.white,
              fontSize: AppSize.s18.sp,
            ),
          ),
        ),
      ),
    );
  }
}
