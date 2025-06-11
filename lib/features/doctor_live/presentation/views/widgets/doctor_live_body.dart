import 'package:doctor_hunt_app/core/utils/app_images.dart';
import 'package:doctor_hunt_app/core/utils/app_size.dart';
import 'package:doctor_hunt_app/features/doctor_live/presentation/views/widgets/app_bar_doctor_live.dart';
import 'package:doctor_hunt_app/features/doctor_live/presentation/views/widgets/comments_and_add_one.dart';
import 'package:flutter/material.dart';

class DoctorLiveBody extends StatelessWidget {
  const DoctorLiveBody({super.key, required this.image});
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppSize.infinity,
      width: AppSize.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppImages.doctorLiveBackground),
          fit: BoxFit.cover,
        ),
      ),
      child: SafeArea(
        child: Column(
          children: [
            AppBarDoctorLive(image: image),
            const Spacer(),
            const CommentsAndAddOne(),
          ],
        ),
      ),
    );
  }
}
