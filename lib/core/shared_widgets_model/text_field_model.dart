import 'package:flutter/material.dart';

class TextFieldModel {
  final String hintText;
  final TextEditingController controller;
  final void Function()? onTap;

  const TextFieldModel({
    required this.hintText,
    required this.controller,
    this.onTap,
  });
}
