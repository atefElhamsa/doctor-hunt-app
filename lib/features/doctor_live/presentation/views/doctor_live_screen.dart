import 'package:doctor_hunt_app/features/doctor_live/presentation/views/widgets/doctor_live_body.dart';
import 'package:flutter/material.dart';

class DoctorLiveScreen extends StatelessWidget {
  const DoctorLiveScreen({super.key, required this.image});
  final String image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: DoctorLiveBody(image: image));
  }
}
