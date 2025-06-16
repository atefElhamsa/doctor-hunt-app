import 'package:doctor_hunt_app/core/utils/app_size.dart';
import 'package:doctor_hunt_app/features/doctor_select_time/presentation/view/widgets/no_slut_widget.dart';
import 'package:doctor_hunt_app/features/doctor_select_time/presentation/view/widgets/slut_widget.dart';
import 'package:flutter/material.dart';

import '../../../data/models/time_model.dart';

class TimePageView extends StatefulWidget {
  TimePageView({
    super.key,
    required this.pageController,
    required this.selectedIndex,
  });
  int selectedIndex;
  final PageController pageController;

  @override
  State<TimePageView> createState() => _TimePageViewState();
}

class _TimePageViewState extends State<TimePageView> {
  @override
  Widget build(BuildContext context) {
    final List<Widget> pages = [
      NoSlutWidget(index: widget.selectedIndex),
      SlutWidget(index: widget.selectedIndex),
      SlutWidget(index: widget.selectedIndex),
    ];
    return SizedBox(
      height: 500,
      width: AppSize.infinity,
      child: PageView.builder(
        itemCount: times.length,
        controller: widget.pageController,
        onPageChanged: (value) {
          setState(() {
            widget.selectedIndex = value;
          });
        },
        itemBuilder: (context, index) {
          return pages[index];
        },
      ),
    );
  }
}
