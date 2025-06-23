import 'package:flutter/material.dart';
import 'package:publicoptionapp/widgets/rounded_icon_widget.dart';
import 'package:publicoptionapp/widgets/text_field_widget.dart';

class OptionWidget extends StatefulWidget {
  const OptionWidget({
    super.key,
    required this.text,
    this.onChanged,
  });

  final String text;
  final ValueChanged<String>? onChanged;

  @override
  State<OptionWidget> createState() => _OptionWidgetState();
}

class _OptionWidgetState extends State<OptionWidget> {
  late final TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: widget.text);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: TextFieldWidget(
            controller: _controller,
            hintText: 'Enter option',
            onChanged: widget.onChanged,
          ),
        ),
        RoundedIconWidget(icon: Icon(Icons.photo_outlined)),
      ],
    );
  }
}
