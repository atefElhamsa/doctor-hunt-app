import 'package:doctor_hunt_app/features/doctor_select_time/data/models/doctor_select_time_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/shared_widgets/custom_text.dart';
import '../../../../../core/shared_widgets_model/text_model.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_images.dart';
import '../../../../../core/utils/app_padding.dart';
import '../../../../../core/utils/app_size.dart';
import '../../../../../core/utils/app_texts.dart';

class DoctorCard extends StatelessWidget {
  const DoctorCard({super.key, required this.doctorSelectTimeModel});
  final DoctorSelectTimeModel doctorSelectTimeModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppSize.infinity,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.all(AppPadding.p15),
      margin: const EdgeInsets.symmetric(
        horizontal: AppPadding.p20,
        vertical: AppPadding.p10,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(doctorSelectTimeModel.image),
          const SizedBox(width: AppPadding.p15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                textModel: TextModel(
                  title: doctorSelectTimeModel.name,
                  fontSize: AppSize.s18.sp,
                ),
              ),
              const SizedBox(height: AppPadding.p3),
              CustomText(
                textModel: TextModel(
                  title: AppTexts.contentDoctor,
                  fontSize: AppSize.s12.sp,
                  fontWeight: FontWeight.w400,
                  color: AppColors.grey,
                ),
              ),
              const SizedBox(height: AppPadding.p5),
              Image.asset(AppImages.star),
            ],
          ),
          const Spacer(),
          Icon(
            doctorSelectTimeModel.isFavourite
                ? Icons.favorite_rounded
                : Icons.favorite_border_rounded,
            color:
                doctorSelectTimeModel.isFavourite
                    ? AppColors.red
                    : AppColors.black,
          ),
        ],
      ),
    );
  }
}
