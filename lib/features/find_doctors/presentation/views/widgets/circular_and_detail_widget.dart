import 'package:doctor_hunt_app/core/utils/app_padding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/shared_widgets/custom_text.dart';
import '../../../../../core/shared_widgets_model/text_model.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_images.dart';
import '../../../../../core/utils/app_size.dart';

class CircularAndDetailWidget extends StatelessWidget {
  const CircularAndDetailWidget({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(AppImages.circular),
        const SizedBox(width: AppPadding.p5),
        CustomText(
          textModel: TextModel(
            title: title,
            fontSize: AppSize.s11.sp,
            fontWeight: FontWeight.w400,
            color: AppColors.grey,
          ),
        ),
      ],
    );
  }
}
