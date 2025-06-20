import 'package:flutter/material.dart';
import 'package:publicoptionapp/widgets/rounded_icon_widget.dart';
import 'package:publicoptionapp/widgets/text_field_widget.dart';

class OptionWidget extends StatelessWidget {
  const OptionWidget({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(child: TextFieldWidget(hintText: text)),
        RoundedIconWidget(icon: Icon(Icons.photo_outlined)),
      ],
    );
  }
}
