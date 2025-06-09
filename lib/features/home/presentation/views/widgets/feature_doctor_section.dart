import 'package:doctor_hunt_app/core/shared_widgets/custom_sub_title.dart';
import 'package:doctor_hunt_app/core/shared_widgets_model/sub_title_model.dart';
import 'package:doctor_hunt_app/core/utils/app_texts.dart';
import 'package:doctor_hunt_app/features/home/presentation/views/widgets/list_view_feature_doctor.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utils/app_padding.dart';

class FeatureDoctorSection extends StatelessWidget {
  const FeatureDoctorSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Padding(
          padding: EdgeInsets.all(AppPadding.p15),
          child: CustomSubTitle(
            subTitleModel: SubTitleModel(title: AppTexts.featureDoctor),
          ),
        ),
        SizedBox(height: 170, child: ListViewFeatureDoctor()),
      ],
    );
  }
}
