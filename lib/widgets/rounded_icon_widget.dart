import 'package:flutter/material.dart';

class RoundedIconWidget extends StatelessWidget {
  const RoundedIconWidget({super.key, required this.icon});

  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.white),
      child: icon,
    );
  }
}
