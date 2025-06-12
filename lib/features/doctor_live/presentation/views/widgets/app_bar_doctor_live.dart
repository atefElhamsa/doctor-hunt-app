import 'package:doctor_hunt_app/core/shared_widgets/custom_navigate_pop.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_padding.dart';

class AppBarDoctorLive extends StatelessWidget {
  const AppBarDoctorLive({super.key, required this.image});
  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppPadding.p20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const CustomNavigatePop(),
          CircleAvatar(
            radius: 20,
            backgroundColor: AppColors.white,
            backgroundImage: AssetImage(image),
          ),
        ],
      ),
    );
  }
}
