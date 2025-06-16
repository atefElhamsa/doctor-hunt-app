import 'package:doctor_hunt_app/core/shared_widgets/custom_app_bar_widget.dart';
import 'package:doctor_hunt_app/core/shared_widgets/custom_text_form_field.dart';
import 'package:doctor_hunt_app/core/shared_widgets_model/text_field_model.dart';
import 'package:doctor_hunt_app/core/utils/app_images.dart';
import 'package:doctor_hunt_app/core/utils/app_size.dart';
import 'package:doctor_hunt_app/core/utils/app_texts.dart';
import 'package:doctor_hunt_app/features/find_doctors/presentation/views/widgets/list_find_doctors.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/app_padding.dart';

class FindDoctorsBody extends StatefulWidget {
  const FindDoctorsBody({super.key});

  @override
  State<FindDoctorsBody> createState() => _FindDoctorsBodyState();
}

class _FindDoctorsBodyState extends State<FindDoctorsBody> {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppSize.infinity,
      width: AppSize.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppImages.background),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          const SizedBox(height: AppPadding.p50),
          const CustomAppBarWidget(title: AppTexts.findDoctors),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: AppPadding.p20,
              vertical: AppPadding.p20,
            ),
            child: CustomTextFormField(
              textFieldModel: TextFieldModel(
                hintText: AppTexts.dentistHint,
                controller: searchController,
              ),
            ),
          ),
          const Expanded(child: ListFindDoctors()),
        ],
      ),
    );
  }
}
