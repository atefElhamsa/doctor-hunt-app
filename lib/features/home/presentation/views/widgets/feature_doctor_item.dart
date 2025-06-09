import 'package:doctor_hunt_app/features/home/data/models/feature_doctor_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/shared_widgets/custom_text.dart';
import '../../../../../core/shared_widgets_model/text_model.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_padding.dart';
import '../../../../../core/utils/app_size.dart';
import '../../../../../core/utils/app_texts.dart';

class FeatureDoctorItem extends StatefulWidget {
  const FeatureDoctorItem({super.key, required this.featureDoctorModel});
  final FeatureDoctorModel featureDoctorModel;

  @override
  State<FeatureDoctorItem> createState() => _FeatureDoctorItemState();
}

class _FeatureDoctorItemState extends State<FeatureDoctorItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: AppPadding.p25,
        right: AppPadding.p5,
      ),
      child: Container(
        width: 150,
        padding: const EdgeInsets.all(AppPadding.p6),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: AppColors.white,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    widget.featureDoctorModel.isFavourite =
                        !widget.featureDoctorModel.isFavourite;
                    setState(() {});
                  },
                  icon: Icon(
                    widget.featureDoctorModel.isFavourite
                        ? Icons.favorite_rounded
                        : Icons.favorite_border_rounded,
                    color:
                        widget.featureDoctorModel.isFavourite
                            ? AppColors.red
                            : AppColors.black,
                  ),
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.star, color: AppColors.yellow),
                ),
                CustomText(
                  textModel: TextModel(
                    title: widget.featureDoctorModel.rateNumber,
                    fontSize: AppSize.s10.sp,
                  ),
                ),
              ],
            ),
            Image.asset(widget.featureDoctorModel.image),
            const SizedBox(height: AppPadding.p6),
            CustomText(
              textModel: TextModel(
                title: widget.featureDoctorModel.name,
                fontSize: AppSize.s12.sp,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomText(
                  textModel: TextModel(
                    title: AppTexts.dollarSin,
                    color: AppColors.green,
                    fontSize: AppSize.s13.sp,
                  ),
                ),
                CustomText(
                  textModel: TextModel(
                    title: widget.featureDoctorModel.price,
                    color: AppColors.grey,
                    fontWeight: FontWeight.w400,
                    fontSize: AppSize.s13.sp,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
