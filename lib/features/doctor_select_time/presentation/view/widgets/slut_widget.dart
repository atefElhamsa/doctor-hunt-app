import 'package:doctor_hunt_app/features/doctor_select_time/presentation/view/widgets/time_afternoon_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/shared_widgets/custom_text.dart';
import '../../../../../core/shared_widgets_model/text_model.dart';
import '../../../../../core/utils/app_padding.dart';
import '../../../../../core/utils/app_size.dart';
import '../../../data/models/time_model.dart';

class SlutWidget extends StatefulWidget {
  const SlutWidget({super.key, required this.index});
  final int index;

  @override
  State<SlutWidget> createState() => _SlutWidgetState();
}

class _SlutWidgetState extends State<SlutWidget> {
  int selectedIndexAfter7 = -1;
  int selectedIndexEven5 = -1;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          child: CustomText(
            textModel: TextModel(
              title: times[widget.index].day,
              fontSize: AppSize.s18.sp,
            ),
          ),
        ),
        const SizedBox(height: AppPadding.p20),
        TimeAfternoonWidget(
          selectedIndex: selectedIndexAfter7,
          subTitle: "Afternoon 7 slots",
          time: timeAfter7,
        ),
        const SizedBox(height: AppPadding.p50),
        TimeAfternoonWidget(
          selectedIndex: selectedIndexEven5,
          subTitle: "Evening 5 slots",
          time: timeEvening5,
        ),
      ],
    );
  }
}
