import 'package:doctor_hunt_app/features/doctor_select_time/data/models/doctor_select_time_model.dart';
import 'package:doctor_hunt_app/features/doctor_select_time/presentation/view/widgets/doctor_card.dart';
import 'package:doctor_hunt_app/features/doctor_select_time/presentation/view/widgets/list_date_book.dart';
import 'package:doctor_hunt_app/features/doctor_select_time/presentation/view/widgets/time_page_view.dart';
import 'package:flutter/material.dart';

import '../../../../../core/shared_widgets/custom_app_bar_widget.dart';
import '../../../../../core/utils/app_images.dart';
import '../../../../../core/utils/app_padding.dart';
import '../../../../../core/utils/app_size.dart';
import '../../../../../core/utils/app_texts.dart';

class DoctorSelectTimeBody extends StatefulWidget {
  const DoctorSelectTimeBody({super.key, required this.doctorSelectTimeModel});
  final DoctorSelectTimeModel doctorSelectTimeModel;

  @override
  State<DoctorSelectTimeBody> createState() => _DoctorSelectTimeBodyState();
}

class _DoctorSelectTimeBodyState extends State<DoctorSelectTimeBody> {
  int selectedIndex = 0;
  PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppSize.infinity,
      width: AppSize.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppImages.background),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          const SizedBox(height: AppPadding.p50),
          const CustomAppBarWidget(title: AppTexts.selectTime),
          const SizedBox(height: AppPadding.p20),
          DoctorCard(doctorSelectTimeModel: widget.doctorSelectTimeModel),
          ListDateBook(
            selectedIndex: selectedIndex,
            pageController: pageController,
          ),
          TimePageView(
            pageController: pageController,
            selectedIndex: selectedIndex,
          ),
        ],
      ),
    );
  }
}
