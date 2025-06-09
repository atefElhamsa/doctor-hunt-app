import 'package:doctor_hunt_app/features/home/presentation/views/widgets/home_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/shared_widgets/custom_text_form_field.dart';
import '../../../../../core/shared_widgets_model/text_field_model.dart';
import '../../../../../core/utils/app_images.dart';
import '../../../../../core/utils/app_padding.dart';
import '../../../../../core/utils/app_size.dart';
import '../../../../../core/utils/app_texts.dart';
import 'info_app_bar.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({super.key});

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                width: AppSize.infinity,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(AppImages.background),
                    fit: BoxFit.cover,
                  ),
                ),
                child: const HomeList(),
              ),
              const InfoAppBar(),
              Positioned(
                top: 120,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: AppPadding.p20),
                  child: SizedBox(
                    height: 100,
                    width: 340.w,
                    child: CustomTextFormField(
                      textFieldModel: TextFieldModel(
                        hintText: AppTexts.search,
                        controller: nameController,
                      ),
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
