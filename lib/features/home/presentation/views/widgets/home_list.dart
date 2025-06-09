import 'package:doctor_hunt_app/features/home/presentation/views/widgets/list_view_specific_doctor.dart';
import 'package:doctor_hunt_app/features/home/presentation/views/widgets/live_doctor_section.dart';
import 'package:doctor_hunt_app/features/home/presentation/views/widgets/popular_doctor_section.dart';
import 'package:flutter/material.dart';

class HomeList extends StatelessWidget {
  const HomeList({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 180),
          LiveDoctorSection(),
          SizedBox(height: 90, child: ListViewSpecificDoctor()),
          PopularDoctorSection(),
        ],
      ),
    );
  }
}
