import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/shared_widgets/custom_text.dart';
import '../../../../../core/shared_widgets_model/text_model.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_images.dart';
import '../../../../../core/utils/app_size.dart';
import '../../../../../core/utils/app_texts.dart';

class LiveDoctorItem extends StatelessWidget {
  const LiveDoctorItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(AppImages.liveDoctor1, fit: BoxFit.cover),
        const Positioned(
          top: 100,
          left: 60,
          child: Icon(
            Icons.play_circle_outline_rounded,
            color: AppColors.white,
            size: 40,
          ),
        ),
        Positioned(
          left: 80,
          top: 30,
          child: Container(
            width: AppSize.s40,
            decoration: BoxDecoration(
              color: AppColors.red,
              borderRadius: BorderRadius.circular(3),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(AppImages.pointLive),
                CustomText(
                  textModel: TextModel(
                    title: AppTexts.live,
                    color: AppColors.white,
                    fontSize: AppSize.s10.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
