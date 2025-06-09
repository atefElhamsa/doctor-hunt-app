import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/shared_widgets/custom_text.dart';
import '../../../../../core/shared_widgets_model/text_model.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_images.dart';
import '../../../../../core/utils/app_padding.dart';
import '../../../../../core/utils/app_size.dart';
import '../../../../../core/utils/app_texts.dart';

class LiveDoctorItem extends StatelessWidget {
  const LiveDoctorItem({super.key, required this.image});
  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: AppPadding.p8),
      child: Stack(
        children: [
          Image.asset(image, fit: BoxFit.cover),
          const Positioned(
            top: 95,
            left: 57,
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
              height: AppSize.s20,
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
      ),
    );
  }
}
