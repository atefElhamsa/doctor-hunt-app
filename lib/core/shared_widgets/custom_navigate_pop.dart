import 'package:flutter/material.dart';
import '../utils/app_colors.dart';
import '../utils/app_size.dart';

class CustomNavigatePop extends StatelessWidget {
  const CustomNavigatePop({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
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
    );
  }
}
