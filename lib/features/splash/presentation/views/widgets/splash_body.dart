import 'package:doctor_hunt_app/core/shared_widgets/custom_text.dart';
import 'package:doctor_hunt_app/core/shared_widgets_model/text_model.dart';
import 'package:doctor_hunt_app/core/utils/app_images.dart';
import 'package:doctor_hunt_app/core/utils/app_size.dart';
import 'package:doctor_hunt_app/core/utils/app_texts.dart';
import 'package:doctor_hunt_app/features/onboarding/presentation/views/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashBody extends StatefulWidget {
  const SplashBody({super.key});

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () => navigateToLogin());
  }

  navigateToLogin() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) {
          return const OnboardingScreen();
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppSize.infinity,
      width: AppSize.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(image: AssetImage(AppImages.background)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            AppImages.iconApp,
            height: AppSize.s70.h,
            width: AppSize.s70.w,
          ),
          const SizedBox(height: AppSize.s10),
          CustomText(
            textModel: TextModel(
              title: AppTexts.doctorHunt,
              fontWeight: FontWeight.w700,
              fontSize: AppSize.s25.sp,
            ),
          ),
        ],
      ),
    );
  }
}
