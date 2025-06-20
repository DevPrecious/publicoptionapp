import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:publicoptionapp/const/colors.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key, this.icon, required this.text});

  final IconData? icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(backgroundColor: blueColor, elevation: 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          icon != null ? Icon(icon, color: Colors.white) : SizedBox(),
          SizedBox(width: 10.w),
          Text(text, style: TextStyle(fontSize: 12.sp, color: Colors.white)),
        ],
      ),
    );
  }
}
