import 'package:doctor_hunt_app/features/home/data/models/specific_doctor_model.dart';
import 'package:doctor_hunt_app/features/home/presentation/views/widgets/specific_doctor_item.dart';
import 'package:flutter/material.dart';

class ListViewSpecificDoctor extends StatelessWidget {
  const ListViewSpecificDoctor({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemBuilder:
          (context, index) =>
              SpecificDoctorItem(specificDoctorModel: specificItems[index]),
      itemCount: specificItems.length,
    );
  }
}
