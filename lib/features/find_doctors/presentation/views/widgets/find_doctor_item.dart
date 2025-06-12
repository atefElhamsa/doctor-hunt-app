import 'package:doctor_hunt_app/core/utils/app_texts.dart';
import 'package:doctor_hunt_app/features/find_doctors/data/models/find_doctor_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/shared_widgets/custom_text.dart';
import '../../../../../core/shared_widgets_model/text_model.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_padding.dart';
import '../../../../../core/utils/app_size.dart';
import 'info_doctor.dart';

class FindDoctorItem extends StatefulWidget {
  const FindDoctorItem({super.key, required this.findDoctorModel});
  final FindDoctorModel findDoctorModel;

  @override
  State<FindDoctorItem> createState() => _FindDoctorItemState();
}

class _FindDoctorItemState extends State<FindDoctorItem> {
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
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(widget.findDoctorModel.image),
              const SizedBox(width: AppPadding.p15),
              InfoDoctor(findDoctorModel: widget.findDoctorModel),
              const Spacer(),
              GestureDetector(
                onTap: () {
                  setState(() {
                    widget.findDoctorModel.isFavourite =
                        !widget.findDoctorModel.isFavourite;
                  });
                },
                child: Icon(
                  widget.findDoctorModel.isFavourite
                      ? Icons.favorite_rounded
                      : Icons.favorite_border_rounded,
                  color:
                      widget.findDoctorModel.isFavourite
                          ? AppColors.red
                          : AppColors.black,
                ),
              ),
            ],
          ),
          const SizedBox(height: AppPadding.p20),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    textModel: TextModel(
                      title: AppTexts.nextAvailable,
                      color: AppColors.materialButtonColor,
                      fontWeight: FontWeight.w400,
                      fontSize: AppSize.s13.sp,
                    ),
                  ),
                  CustomText(
                    textModel: TextModel(
                      title: widget.findDoctorModel.time,
                      color: AppColors.grey,
                      fontWeight: FontWeight.w400,
                      fontSize: AppSize.s12.sp,
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Container(
                height: 34,
                width: 112,
                decoration: BoxDecoration(
                  color: AppColors.materialButtonColor,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Center(
                  child: CustomText(
                    textModel: TextModel(
                      title: AppTexts.bookNow,
                      color: AppColors.white,
                      fontSize: AppSize.s12.sp,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
