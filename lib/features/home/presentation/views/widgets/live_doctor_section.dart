import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/shared_widgets/custom_text.dart';
import '../../../../../core/shared_widgets_model/text_model.dart';
import '../../../../../core/utils/app_padding.dart';
import '../../../../../core/utils/app_size.dart';
import '../../../../../core/utils/app_texts.dart';
import 'live_doctor_item.dart';

class LiveDoctorSection extends StatelessWidget {
  const LiveDoctorSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: AppPadding.p8,
            top: AppPadding.p15,
          ),
          child: CustomText(
            textModel: TextModel(
              title: AppTexts.liveDoctors,
              fontSize: AppSize.s18.sp,
            ),
          ),
        ),
        const LiveDoctorItem(),
      ],
    );
  }
}
