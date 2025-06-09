import 'package:doctor_hunt_app/core/shared_widgets_model/sub_title_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../shared_widgets_model/text_model.dart';
import '../utils/app_colors.dart';
import '../utils/app_size.dart';
import '../utils/app_texts.dart';
import 'custom_text.dart';

class CustomSubTitle extends StatelessWidget {
  const CustomSubTitle({super.key, required this.subTitleModel});
  final SubTitleModel subTitleModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomText(
          textModel: TextModel(
            title: subTitleModel.title,
            fontSize: AppSize.s18.sp,
          ),
        ),
        const Spacer(),
        GestureDetector(
          onTap: subTitleModel.onTap,
          child: CustomText(
            textModel: TextModel(
              title: "${AppTexts.seeAll}>",
              color: AppColors.grey,
              fontSize: AppSize.s13.sp,
            ),
          ),
        ),
      ],
    );
  }
}
