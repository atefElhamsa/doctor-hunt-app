import 'package:doctor_hunt_app/features/find_doctors/data/models/find_doctor_model.dart';
import 'package:doctor_hunt_app/features/find_doctors/presentation/views/widgets/find_doctor_item.dart';
import 'package:flutter/material.dart';

class ListFindDoctors extends StatelessWidget {
  const ListFindDoctors({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      physics: const BouncingScrollPhysics(),
      itemBuilder:
          (context, index) =>
              FindDoctorItem(findDoctorModel: doctorItems[index]),
      itemCount: doctorItems.length,
    );
  }
}
