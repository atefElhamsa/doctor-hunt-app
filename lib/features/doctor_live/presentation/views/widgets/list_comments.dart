import 'package:doctor_hunt_app/features/doctor_live/data/models/comment_model.dart';
import 'package:doctor_hunt_app/features/doctor_live/presentation/views/widgets/comment_item.dart';
import 'package:flutter/material.dart';

class ListComments extends StatelessWidget {
  const ListComments({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemBuilder:
          (context, index) => CommentItem(commentModel: comments[index]),
      itemCount: comments.length,
    );
  }
}
