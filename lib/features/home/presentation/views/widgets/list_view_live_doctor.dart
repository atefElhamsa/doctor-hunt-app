import 'package:doctor_hunt_app/core/utils/app_images.dart';
import 'package:doctor_hunt_app/features/doctor_live/presentation/views/doctor_live_screen.dart';
import 'package:doctor_hunt_app/features/home/presentation/views/widgets/live_doctor_item.dart';
import 'package:flutter/material.dart';

class ListViewLiveDoctor extends StatelessWidget {
  ListViewLiveDoctor({super.key});
  final List<String> images = [
    AppImages.liveDoctor1,
    AppImages.liveDoctor2,
    AppImages.liveDoctor3,
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemBuilder:
          (context, index) => GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DoctorLiveScreen(image: images[index]),
                ),
              );
            },
            child: LiveDoctorItem(image: images[index]),
          ),
      itemCount: images.length,
    );
  }
}
