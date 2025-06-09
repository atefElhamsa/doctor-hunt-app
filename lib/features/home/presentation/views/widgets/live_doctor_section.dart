import 'package:doctor_hunt_app/features/home/presentation/views/widgets/list_view_live_doctor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/shared_widgets/custom_text.dart';
import '../../../../../core/shared_widgets_model/text_model.dart';
import '../../../../../core/utils/app_padding.dart';
import '../../../../../core/utils/app_size.dart';
import '../../../../../core/utils/app_texts.dart';

class LiveDoctorSection extends StatelessWidget {
  const LiveDoctorSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 270, top: AppPadding.p15),
          child: CustomText(
            textModel: TextModel(
              title: AppTexts.liveDoctors,
              fontSize: AppSize.s18.sp,
            ),
          ),
        ),
        SizedBox(height: 200, child: ListViewLiveDoctor()),
      ],
    );
  }
}
