import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    super.key,
    this.controller,
    required this.hintText,
    this.onChanged,
  });

  final TextEditingController? controller;
  final String hintText;
  final ValueChanged<String>? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      onChanged: onChanged,
      decoration: InputDecoration(
        border: InputBorder.none,
        hintText: hintText,
      ),
    );
  }
}
