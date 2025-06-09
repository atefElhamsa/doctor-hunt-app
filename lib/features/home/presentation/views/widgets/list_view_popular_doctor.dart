import 'package:doctor_hunt_app/features/home/data/models/popular_doctor_model.dart';
import 'package:doctor_hunt_app/features/home/presentation/views/widgets/popular_doctor_item.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/app_padding.dart';

class ListViewPopularDoctor extends StatelessWidget {
  const ListViewPopularDoctor({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemBuilder:
          (context, index) =>
              PopularDoctorItem(popularDoctorModel: popularItems[index]),
      separatorBuilder:
          (context, index) => const SizedBox(width: AppPadding.p20),
      itemCount: popularItems.length,
    );
  }
}
