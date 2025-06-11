import 'package:flutter/material.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_padding.dart';
import '../../../../../core/utils/app_texts.dart';

class AddCommentWidget extends StatelessWidget {
  const AddCommentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppPadding.p20),
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: const Padding(
            padding: EdgeInsets.all(AppPadding.p10),
            child: CircleAvatar(
              backgroundColor: AppColors.green,
              child: Icon(Icons.chat_bubble, color: AppColors.white),
            ),
          ),
          hintText: AppTexts.addComment,
          filled: true,
          fillColor: AppColors.white,
          suffixIcon: const Icon(Icons.emoji_emotions),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
