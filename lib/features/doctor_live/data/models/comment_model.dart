import 'package:doctor_hunt_app/core/utils/app_images.dart';
import 'package:doctor_hunt_app/core/utils/app_texts.dart';

class CommentModel {
  final String name;
  final String comment;
  final String image;

  const CommentModel({
    required this.name,
    required this.comment,
    required this.image,
  });
}

final List<CommentModel> comments = [
  const CommentModel(
    name: AppTexts.everhart,
    comment: AppTexts.commentEverhart,
    image: AppImages.everhart,
  ),
  const CommentModel(
    name: AppTexts.bonebrake,
    comment: AppTexts.commentBonebrake,
    image: AppImages.bonebrake,
  ),
  const CommentModel(
    name: AppTexts.handler,
    comment: AppTexts.commentHandler,
    image: AppImages.handler,
  ),
  const CommentModel(
    name: AppTexts.comfort,
    comment: AppTexts.commentComfort,
    image: AppImages.comfort,
  ),
];
