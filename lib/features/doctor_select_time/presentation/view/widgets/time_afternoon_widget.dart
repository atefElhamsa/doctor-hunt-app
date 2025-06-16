import 'package:doctor_hunt_app/features/doctor_select_time/presentation/view/widgets/time_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/shared_widgets/custom_text.dart';
import '../../../../../core/shared_widgets_model/text_model.dart';
import '../../../../../core/utils/app_padding.dart';
import '../../../../../core/utils/app_size.dart';

class TimeAfternoonWidget extends StatefulWidget {
  TimeAfternoonWidget({
    super.key,
    required this.selectedIndex,
    required this.subTitle,
    required this.time,
  });
  int selectedIndex;
  final String subTitle;
  final List time;

  @override
  State<TimeAfternoonWidget> createState() => _TimeAfternoonWidgetState();
}

class _TimeAfternoonWidgetState extends State<TimeAfternoonWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppPadding.p20),
          child: CustomText(
            textModel: TextModel(
              title: "Afternoon 7 slots",
              fontSize: AppSize.s16.sp,
            ),
          ),
        ),
        const SizedBox(height: AppPadding.p20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppPadding.p10),
          child: GridView.builder(
            itemCount: widget.time.length,
            shrinkWrap: true,
            padding: EdgeInsets.zero,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              mainAxisSpacing: 10,
              childAspectRatio: 2,
            ),
            itemBuilder:
                (context, index) => GestureDetector(
                  onTap: () {
                    setState(() {
                      widget.selectedIndex = index;
                    });
                  },
                  child: TimeItem(
                    time: widget.time[index],
                    isSelected: widget.selectedIndex == index,
                  ),
                ),
          ),
        ),
      ],
    );
  }
}
