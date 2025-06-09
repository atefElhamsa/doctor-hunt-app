import 'package:doctor_hunt_app/features/home/data/models/feature_doctor_model.dart';
import 'package:doctor_hunt_app/features/home/presentation/views/widgets/feature_doctor_item.dart';
import 'package:flutter/material.dart';

class ListViewFeatureDoctor extends StatelessWidget {
  const ListViewFeatureDoctor({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemBuilder:
          (context, index) =>
              FeatureDoctorItem(featureDoctorModel: featureItems[index]),
      itemCount: featureItems.length,
    );
  }
}
