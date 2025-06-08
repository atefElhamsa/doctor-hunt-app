import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/shared_widgets/custom_text.dart';
import '../../../../../core/shared_widgets_model/text_model.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_images.dart';
import '../../../../../core/utils/app_size.dart';
import '../../../../../core/utils/app_texts.dart';

class InfoAppBar extends StatelessWidget {
  const InfoAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppSize.infinity,
      height: 150,
      decoration: BoxDecoration(
        color: AppColors.materialButtonColor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20.r),
          bottomRight: Radius.circular(20.r),
        ),
      ),
      child: Center(
        child: ListTile(
          title: CustomText(
            textModel: TextModel(
              title: AppTexts.hiHandwerker,
              color: AppColors.white.withAlpha(180),
              fontWeight: FontWeight.w300,
              fontSize: AppSize.s20.sp,
            ),
          ),
          subtitle: CustomText(
            textModel: TextModel(
              title: AppTexts.findYourDoctor,
              color: AppColors.white,
              fontWeight: FontWeight.w700,
              fontSize: AppSize.s25.sp,
            ),
          ),
          trailing: Image.asset(AppImages.handWerker),
        ),
      ),
    );
  }
}
