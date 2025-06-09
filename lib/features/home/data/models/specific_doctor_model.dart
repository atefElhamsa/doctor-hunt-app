import 'package:doctor_hunt_app/core/utils/app_colors.dart';
import 'package:doctor_hunt_app/core/utils/app_images.dart';
import 'package:flutter/material.dart';

class SpecificDoctorModel {
  final String image;
  final Color color;

  const SpecificDoctorModel({required this.image, required this.color});
}

final List<SpecificDoctorModel> specificItems = [
  const SpecificDoctorModel(image: AppImages.dentist, color: AppColors.blue),
  const SpecificDoctorModel(image: AppImages.stomach, color: AppColors.green),
  const SpecificDoctorModel(image: AppImages.eyes, color: AppColors.orange),
  const SpecificDoctorModel(image: AppImages.female, color: AppColors.red),
];
