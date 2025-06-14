import 'package:doctor_hunt_app/features/home/presentation/views/home_screen.dart';
import 'package:doctor_hunt_app/features/onboarding/data/models/onboarding_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/shared_widgets/custom_button.dart';
import '../../../../../core/shared_widgets/custom_text.dart';
import '../../../../../core/shared_widgets/custom_text_button.dart';
import '../../../../../core/shared_widgets_model/button_model.dart';
import '../../../../../core/shared_widgets_model/text_model.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_padding.dart';
import '../../../../../core/utils/app_size.dart';
import '../../../../../core/utils/app_texts.dart';

class OnboardingWidget extends StatelessWidget {
  const OnboardingWidget({
    super.key,
    required this.onboardingModel,
    required this.pageController,
    required this.currentPageIndex,
  });
  final OnboardingModel onboardingModel;
  final PageController pageController;
  final int currentPageIndex;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: AppSize.infinity,
      child: Column(
        crossAxisAlignment:
            onboardingModel.crossAxisAlignment ?? CrossAxisAlignment.start,
        children: [
          Image.asset(onboardingModel.topImage),
          const SizedBox(height: AppSize.s100),
          Center(
            child: CustomText(
              textModel: TextModel(title: onboardingModel.titleImage),
            ),
          ),
          const SizedBox(height: AppSize.s6),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: AppPadding.p20),
              child: CustomText(
                textModel: TextModel(
                  title: onboardingModel.descriptionTitle,
                  textAlign: TextAlign.center,
                  fontSize: AppSize.s15.sp,
                  color: AppColors.grey,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          const SizedBox(height: AppSize.s100),
          Row(
            children: [
              Expanded(
                child: CustomButton(
                  buttonModel: ButtonModel(
                    title: onboardingModel.buttonTitle ?? AppTexts.getStarted,
                    padding: AppPadding.p25,
                    onTap: () {
                      if (currentPageIndex == onboardingItems.length - 1) {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomeScreen(),
                          ),
                        );
                      } else {
                        pageController.animateToPage(
                          currentPageIndex + 1,
                          duration: const Duration(seconds: 1),
                          curve: Curves.ease,
                        );
                      }
                    },
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: AppSize.s6),
          Center(
            child: CustomTextButton(
              buttonModel: ButtonModel(
                title: AppTexts.skip,
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const HomeScreen()),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
