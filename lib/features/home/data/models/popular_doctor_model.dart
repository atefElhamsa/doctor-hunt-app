import 'package:doctor_hunt_app/core/utils/app_images.dart';
import 'package:doctor_hunt_app/core/utils/app_texts.dart';

class PopularDoctorModel {
  final String image;
  final String name;
  final String specific;

  const PopularDoctorModel({
    required this.image,
    required this.name,
    required this.specific,
  });
}

final List<PopularDoctorModel> popularItems = [
  const PopularDoctorModel(
    image: AppImages.fillerUp,
    name: AppTexts.fillerup,
    specific: AppTexts.medicine,
  ),
  const PopularDoctorModel(
    image: AppImages.blessing,
    name: AppTexts.blessing,
    specific: AppTexts.dentist,
  ),
];
