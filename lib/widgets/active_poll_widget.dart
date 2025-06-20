import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:publicoptionapp/const/colors.dart';

class ActivePollWidget extends StatelessWidget {
  const ActivePollWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30),
      decoration: BoxDecoration(
        color: activeColor,
        borderRadius: BorderRadius.all(Radius.circular(25)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '12 Active Polls',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10.h),
              Text(
                'Show details',
                style: TextStyle(
                  color: Colors.grey.withAlpha(255),
                  fontSize: 12.sp,
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: greyColor,
              borderRadius: BorderRadius.all(Radius.circular(15)),
            ),
            child: Icon(
              Icons.arrow_forward_ios,
              color: Colors.white,
              size: 16.r,
            ),
          ),
        ],
      ),
    );
  }
}
