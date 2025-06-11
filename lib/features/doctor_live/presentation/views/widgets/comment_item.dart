import 'package:doctor_hunt_app/features/doctor_live/data/models/comment_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/shared_widgets/custom_text.dart';
import '../../../../../core/shared_widgets_model/text_model.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_size.dart';

class CommentItem extends StatelessWidget {
  const CommentItem({super.key, required this.commentModel});
  final CommentModel commentModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(commentModel.image),
      title: CustomText(
        textModel: TextModel(
          title: commentModel.name,
          fontSize: AppSize.s18.sp,
          color: AppColors.white,
        ),
      ),
      subtitle: CustomText(
        textModel: TextModel(
          title: commentModel.comment,
          fontSize: AppSize.s14.sp,
          color: AppColors.white,
          fontWeight: FontWeight.w300,
        ),
      ),
    );
  }
}
