import 'package:doctor_hunt_app/core/utils/app_images.dart';
import 'package:doctor_hunt_app/core/utils/app_texts.dart';
import 'package:flutter/material.dart';

class OnboardingModel {
  final String topImage;
  final String titleImage;
  final String descriptionTitle;
  final String? buttonTitle;
  final CrossAxisAlignment? crossAxisAlignment;

  const OnboardingModel({
    required this.topImage,
    required this.titleImage,
    required this.descriptionTitle,
    this.crossAxisAlignment,
    this.buttonTitle,
  });
}

final List<OnboardingModel> onboardingItems = [
   const OnboardingModel(
    topImage: AppImages.onboardingImage1,
    titleImage: AppTexts.findTrustedDoctors,
    descriptionTitle: AppTexts.descriptionOnboarding,
  ),
   const OnboardingModel(
    topImage: AppImages.onboardingImage2,
    titleImage: AppTexts.chooseBestDoctors,
    descriptionTitle: AppTexts.descriptionOnboarding,
    crossAxisAlignment: CrossAxisAlignment.end,
  ),
   const OnboardingModel(
    topImage: AppImages.onboardingImage3,
    titleImage: AppTexts.easyAppointments,
    descriptionTitle: AppTexts.descriptionOnboarding,
  ),
];
