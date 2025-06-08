import 'package:doctor_hunt_app/features/home/presentation/views/widgets/live_doctor_section.dart';
import 'package:flutter/material.dart';

class HomeList extends StatelessWidget {
  const HomeList({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 170),
        LiveDoctorSection()
      ],
    );
  }
}
