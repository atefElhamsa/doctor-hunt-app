import 'package:doctor_hunt_app/features/doctor_select_time/data/models/doctor_select_time_model.dart';
import 'package:doctor_hunt_app/features/doctor_select_time/presentation/view/widgets/doctor_select_time_body.dart';
import 'package:flutter/material.dart';

class DoctorSelectTimeScreen extends StatelessWidget {
  const DoctorSelectTimeScreen({
    super.key,
    required this.doctorSelectTimeModel,
  });
  final DoctorSelectTimeModel doctorSelectTimeModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DoctorSelectTimeBody(doctorSelectTimeModel: doctorSelectTimeModel),
    );
  }
}
