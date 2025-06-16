import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../shared_widgets_model/text_model.dart';
import '../utils/app_padding.dart';
import '../utils/app_size.dart';
import 'custom_navigate_pop.dart';
import 'custom_text.dart';

class CustomAppBarWidget extends StatelessWidget {
  const CustomAppBarWidget({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: AppPadding.p20,
        vertical: AppPadding.p10,
      ),
      child: Row(
        children: [
          const CustomNavigatePop(),
          const SizedBox(width: 30),
          CustomText(
            textModel: TextModel(title: title, fontSize: AppSize.s18.sp),
          ),
        ],
      ),
    );
  }
}
