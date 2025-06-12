import 'package:doctor_hunt_app/features/find_doctors/presentation/views/widgets/find_doctors_body.dart';
import 'package:flutter/material.dart';

class FindDoctorsScreen extends StatelessWidget {
  const FindDoctorsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: FindDoctorsBody(),
    );
  }
}
