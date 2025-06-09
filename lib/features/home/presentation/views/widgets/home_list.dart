import 'package:doctor_hunt_app/features/home/presentation/views/widgets/feature_doctor_section.dart';
import 'package:doctor_hunt_app/features/home/presentation/views/widgets/list_view_specific_doctor.dart';
import 'package:doctor_hunt_app/features/home/presentation/views/widgets/live_doctor_section.dart';
import 'package:doctor_hunt_app/features/home/presentation/views/widgets/popular_doctor_section.dart';
import 'package:flutter/material.dart';

class HomeList extends StatelessWidget {
  const HomeList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 949,
      child: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          const SizedBox(height: 140),
          const LiveDoctorSection(),
          const SizedBox(height: 90, child: ListViewSpecificDoctor()),
          const PopularDoctorSection(),
          const FeatureDoctorSection(),
        ],
      ),
    );
  }
}
