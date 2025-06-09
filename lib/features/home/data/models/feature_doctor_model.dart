import 'package:doctor_hunt_app/core/utils/app_images.dart';
import 'package:doctor_hunt_app/core/utils/app_texts.dart';

class FeatureDoctorModel {
  final String rateNumber;
  final String image;
  final String name;
  final String price;
  bool isFavourite;

  FeatureDoctorModel({
    required this.rateNumber,
    required this.image,
    required this.name,
    required this.price,
    this.isFavourite = false,
  });
}

final List<FeatureDoctorModel> featureItems = [
  FeatureDoctorModel(
    rateNumber: "3.7",
    image: AppImages.crick,
    name: AppTexts.crick,
    price: AppTexts.twentyFive,
  ),
  FeatureDoctorModel(
    rateNumber: "3.0",
    image: AppImages.strain,
    name: AppTexts.strain,
    price: AppTexts.twentyTwo,
  ),
  FeatureDoctorModel(
    rateNumber: "2.9",
    image: AppImages.lachinet,
    name: AppTexts.lachinet,
    price: AppTexts.twentyNine,
  ),
];
