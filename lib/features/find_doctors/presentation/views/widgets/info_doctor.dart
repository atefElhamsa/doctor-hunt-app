import 'package:doctor_hunt_app/features/find_doctors/data/models/find_doctor_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/shared_widgets/custom_text.dart';
import '../../../../../core/shared_widgets_model/text_model.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_padding.dart';
import '../../../../../core/utils/app_size.dart';
import '../../../../../core/utils/app_texts.dart';
import 'circular_and_detail_widget.dart';

class InfoDoctor extends StatelessWidget {
  const InfoDoctor({super.key, required this.findDoctorModel});
  final FindDoctorModel findDoctorModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          textModel: TextModel(
            title: findDoctorModel.name,
            fontSize: AppSize.s18.sp,
          ),
        ),
        CustomText(
          textModel: TextModel(
            title: AppTexts.toothsDentist,
            fontSize: AppSize.s13.sp,
            fontWeight: FontWeight.w400,
            color: AppColors.materialButtonColor,
          ),
        ),
        CustomText(
          textModel: TextModel(
            title: findDoctorModel.experience,
            fontSize: AppSize.s12.sp,
            fontWeight: FontWeight.w400,
            color: AppColors.grey,
          ),
        ),
        Row(
          children: [
            CircularAndDetailWidget(title: findDoctorModel.ratio),
            const SizedBox(width: AppPadding.p30),
            CircularAndDetailWidget(title: findDoctorModel.patientStories),
          ],
        ),
      ],
    );
  }
}
