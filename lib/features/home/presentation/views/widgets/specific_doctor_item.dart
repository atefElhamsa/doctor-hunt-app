import 'package:doctor_hunt_app/features/home/data/models/specific_doctor_model.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utils/app_padding.dart';
import '../../../../../core/utils/app_size.dart';

class SpecificDoctorItem extends StatelessWidget {
  const SpecificDoctorItem({super.key, required this.specificDoctorModel});
  final SpecificDoctorModel specificDoctorModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: AppPadding.p25),
      child: Container(
        width: AppSize.s80,
        height: AppSize.s90,
        decoration: BoxDecoration(
          color: specificDoctorModel.color,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Image.asset(specificDoctorModel.image),
      ),
    );
  }
}
