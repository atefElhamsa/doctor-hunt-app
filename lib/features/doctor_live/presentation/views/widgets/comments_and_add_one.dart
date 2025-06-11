import 'package:flutter/material.dart';
import '../../../../../core/utils/app_colors.dart';
import 'add_comment_widget.dart';
import 'list_comments.dart';

class CommentsAndAddOne extends StatelessWidget {
  const CommentsAndAddOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [AppColors.transparent, AppColors.black87],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: const Column(
        children: [
          SizedBox(height: 300, child: ListComments()),
          AddCommentWidget(),
        ],
      ),
    );
  }
}
