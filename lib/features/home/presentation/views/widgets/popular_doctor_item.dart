import 'package:doctor_hunt_app/features/home/data/models/popular_doctor_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/shared_widgets/custom_text.dart';
import '../../../../../core/shared_widgets_model/text_model.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_images.dart';
import '../../../../../core/utils/app_padding.dart';
import '../../../../../core/utils/app_size.dart';

class PopularDoctorItem extends StatelessWidget {
  const PopularDoctorItem({super.key, required this.popularDoctorModel});
  final PopularDoctorModel popularDoctorModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(12),
              topLeft: Radius.circular(12),
            ),
            child: Image.asset(
              popularDoctorModel.image,
              fit: BoxFit.cover,
              width: 195,
              height: 185,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppPadding.p20),
            child: CustomText(
              textModel: TextModel(
                title: popularDoctorModel.name,
                fontSize: AppSize.s18.sp,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppPadding.p20),
            child: CustomText(
              textModel: TextModel(
                title: popularDoctorModel.specific,
                fontSize: AppSize.s13.sp,
                color: AppColors.grey,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: AppPadding.p20,
              vertical: AppPadding.p6,
            ),
            child: Image.asset(AppImages.star),
          ),
        ],
      ),
    );
  }
}
