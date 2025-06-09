import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_padding.dart';

class ContainerBottomNav extends StatelessWidget {
  const ContainerBottomNav({
    super.key,
    required this.currentIndex,
    required this.iconData,
  });
  final bool currentIndex;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppPadding.p8),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: currentIndex ? AppColors.green : AppColors.transparent,
      ),
      child: Icon(iconData),
    );
  }
}
