import 'package:doctor_hunt_app/core/utils/app_images.dart';
import 'package:doctor_hunt_app/core/utils/app_texts.dart';

class FindDoctorModel {
  final String image;
  final String name;
  final String special;
  final String experience;
  final String ratio;
  final String patientStories;
  final String time;
  bool isFavourite;

  FindDoctorModel({
    required this.image,
    required this.name,
    required this.special,
    required this.experience,
    required this.ratio,
    required this.patientStories,
    required this.time,
    this.isFavourite = false,
  });
}

final List<FindDoctorModel> doctorItems = [
  FindDoctorModel(
    image: AppImages.shruti,
    name: AppTexts.shruti,
    special: AppTexts.toothsDentist,
    experience: AppTexts.sevenYearsExperience,
    ratio: AppTexts.ratio87,
    patientStories: AppTexts.patientStories69,
    time: AppTexts.time10,
  ),
  FindDoctorModel(
    image: AppImages.watamaniuk,
    name: AppTexts.watamaniuk,
    special: AppTexts.toothsDentist,
    experience: AppTexts.nineYearsExperience,
    ratio: AppTexts.ratio74,
    patientStories: AppTexts.patientStories78,
    time: AppTexts.time12,
  ),
  FindDoctorModel(
    image: AppImages.crownOver,
    name: AppTexts.crownover,
    special: AppTexts.toothsDentist,
    experience: AppTexts.fiveYearsExperience,
    ratio: AppTexts.ratio59,
    patientStories: AppTexts.patientStories86,
    time: AppTexts.time11,
  ),
  FindDoctorModel(
    image: AppImages.blessing,
    name: AppTexts.balestra,
    special: AppTexts.toothsDentist,
    experience: AppTexts.sexYearsExperience,
    ratio: AppTexts.ratio59,
    patientStories: AppTexts.patientStories86,
    time: AppTexts.time1,
  ),
];
