import 'package:doctor_hunt_app/core/shared_widgets_model/text_model.dart';
import 'package:doctor_hunt_app/core/utils/app_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import '../utils/app_colors.dart';

class CustomText extends StatelessWidget {
  const CustomText({super.key, required this.textModel});
  final TextModel textModel;

  @override
  Widget build(BuildContext context) {
    return Text(
      textModel.title,
      textAlign: textModel.textAlign,
      style: GoogleFonts.rubik(
        color: textModel.color ?? AppColors.black,
        fontWeight: textModel.fontWeight ?? FontWeight.w500,
        fontSize: textModel.fontSize ?? AppSize.s28.sp,
      ),
    );
  }
}
