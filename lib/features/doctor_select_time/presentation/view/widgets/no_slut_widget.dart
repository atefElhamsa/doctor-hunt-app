import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/shared_widgets/custom_button.dart';
import '../../../../../core/shared_widgets/custom_text.dart';
import '../../../../../core/shared_widgets_model/button_model.dart';
import '../../../../../core/shared_widgets_model/text_model.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_padding.dart';
import '../../../../../core/utils/app_size.dart';
import '../../../data/models/time_model.dart';

class NoSlutWidget extends StatelessWidget {
  const NoSlutWidget({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustomText(
          textModel: TextModel(
            title: times[index].day,
            fontSize: AppSize.s16.sp,
          ),
        ),
        const SizedBox(height: AppPadding.p23),
        CustomText(
          textModel: TextModel(
            title: times[index].numberOfSlot,
            fontSize: AppSize.s14.sp,
            color: AppColors.grey,
            fontWeight: FontWeight.w400,
          ),
        ),
        const SizedBox(height: AppPadding.p20),
        Row(
          children: [
            Expanded(
              child: CustomButton(
                buttonModel: ButtonModel(
                  title: "Next availability on wed, 24 Feb",
                  padding: AppPadding.p25,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: AppPadding.p14),
        CustomText(
          textModel: TextModel(
            title: "OR",
            fontSize: AppSize.s14.sp,
            color: AppColors.grey,
            fontWeight: FontWeight.w400,
          ),
        ),
        const SizedBox(height: AppPadding.p14),
        Row(
          children: [
            Expanded(
              child: CustomButton(
                buttonModel: ButtonModel(
                  title: "Contact Clinic",
                  padding: AppPadding.p25,
                  color: AppColors.transparent,
                  textColor: AppColors.materialButtonColor,
                  borderColor: AppColors.materialButtonColor,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
