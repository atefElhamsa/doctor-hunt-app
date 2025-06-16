import 'package:doctor_hunt_app/features/doctor_select_time/data/models/time_model.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/app_padding.dart';
import 'date_item_book.dart';

class ListDateBook extends StatefulWidget {
  ListDateBook({
    super.key,
    required this.selectedIndex,
    required this.pageController,
  });
  int selectedIndex;
  final PageController pageController;

  @override
  State<ListDateBook> createState() => _ListDateBookState();
}

class _ListDateBookState extends State<ListDateBook> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppPadding.p20),
      child: SizedBox(
        height: 70,
        child: ListView.separated(
          itemCount: times.length,
          scrollDirection: Axis.horizontal,
          separatorBuilder: (context, index) {
            return const SizedBox(width: 20);
          },
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  widget.selectedIndex = index;
                  widget.pageController.jumpToPage(index);
                });
              },
              child: DateItemBook(
                timeModel: times[index],
                isSelect: widget.selectedIndex == index,
              ),
            );
          },
        ),
      ),
    );
  }
}
