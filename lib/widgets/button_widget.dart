import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:publicoptionapp/const/colors.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    super.key,
    this.icon,
    required this.text,
    this.onPressed,
  });

  final IconData? icon;
  final String text;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: blueColor,
        elevation: 0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (icon != null) Icon(icon, color: Colors.white),
          if (icon != null) SizedBox(width: 10.w),
          Text(
            text,
            style: TextStyle(fontSize: 12.sp, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
