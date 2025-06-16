import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/shared_widgets/custom_text.dart';
import '../../../../../core/shared_widgets_model/text_model.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_padding.dart';
import '../../../../../core/utils/app_size.dart';

class TimeItem extends StatefulWidget {
  const TimeItem({super.key, required this.time, required this.isSelected});
  final String time;
  final bool isSelected;

  @override
  State<TimeItem> createState() => _TimeItemState();
}

class _TimeItemState extends State<TimeItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 72,
      margin: const EdgeInsets.symmetric(horizontal: AppPadding.p10),
      decoration: BoxDecoration(
        color:
            widget.isSelected
                ? AppColors.materialButtonColor
                : AppColors.green.withAlpha(30),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Center(
        child: CustomText(
          textModel: TextModel(
            title: widget.time,
            fontSize: AppSize.s13.sp,
            fontWeight: FontWeight.w400,
            color: widget.isSelected ? AppColors.white : AppColors.green,
          ),
        ),
      ),
    );
  }
}
