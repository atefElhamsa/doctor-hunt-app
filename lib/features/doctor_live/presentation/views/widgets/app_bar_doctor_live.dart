import 'package:flutter/material.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_padding.dart';
import '../../../../../core/utils/app_size.dart';

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
          GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Container(
              height: AppSize.s36,
              width: AppSize.s36,
              padding: const EdgeInsets.only(left: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppColors.white,
              ),
              child: const Icon(Icons.arrow_back_ios, color: AppColors.grey),
            ),
          ),
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
