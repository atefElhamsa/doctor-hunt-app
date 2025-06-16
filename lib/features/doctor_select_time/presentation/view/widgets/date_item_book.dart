import 'package:doctor_hunt_app/features/doctor_select_time/data/models/time_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/shared_widgets/custom_text.dart';
import '../../../../../core/shared_widgets_model/text_model.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_padding.dart';
import '../../../../../core/utils/app_size.dart';

class DateItemBook extends StatelessWidget {
  const DateItemBook({
    super.key,
    required this.isSelect,
    required this.timeModel,
  });
  final TimeModel timeModel;
  final bool isSelect;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppPadding.p10),
      decoration: BoxDecoration(
        color: isSelect ? AppColors.materialButtonColor : AppColors.transparent,
        borderRadius: BorderRadius.circular(6),
        border: Border.all(
          color: isSelect ? AppColors.transparent : AppColors.grey,
        ),
      ),
      child: Column(
        children: [
          CustomText(
            textModel: TextModel(
              title: timeModel.day,
              fontSize: AppSize.s16.sp,
              fontWeight: FontWeight.w400,
              color: isSelect ? AppColors.white : AppColors.black,
            ),
          ),
          CustomText(
            textModel: TextModel(
              title: timeModel.numberOfSlot,
              fontSize: AppSize.s10.sp,
              fontWeight: FontWeight.w400,
              color: isSelect ? AppColors.white : AppColors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
