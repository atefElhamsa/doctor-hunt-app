import 'package:flutter/material.dart';

class ButtonModel {
  final double? height;
  final double? padding;
  final String title;
  final Color? color;
  final void Function()? onTap;

  ButtonModel({
    required this.title,
    this.height,
    this.onTap,
    this.color,
    this.padding
  });
}