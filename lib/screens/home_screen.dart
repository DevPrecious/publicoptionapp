import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:publicoptionapp/const/colors.dart';
import 'package:publicoptionapp/screens/create_poll_screen.dart';
import 'package:publicoptionapp/widgets/active_poll_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(() => const CreatePollScreen());
        },
        child: Icon(Icons.add),
      ),
      backgroundColor: bgColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 14.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: TextSpan(
                      text: 'Good morning,',
                      style: TextStyle(color: Colors.black, fontSize: 24.sp),
                      children: [
                        TextSpan(
                          text: '\nPrecious!',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  CircleAvatar(
                    radius: 20.r,
                    backgroundImage: NetworkImage(
                      "https://img.freepik.com/free-psd/3d-illustration-human-avatar-profile_23-2150671151.jpg?semt=ais_hybrid&w=740",
                    ),
                  ),
                ],
              ),
              SizedBox(height: 25.h),
              ActivePollWidget(),
              SizedBox(height: 20.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Recent Polls',
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'See all',
                    style: TextStyle(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey.withAlpha(255),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 25.h),
              Container(
                padding: EdgeInsets.all(6),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: blueColor,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        height: 200.h,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Who's the best player\nin the world?",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 10.h),
                            Text(
                              "Created 2 days ago",
                              style: TextStyle(
                                color: Colors.white.withValues(alpha: 0.3),
                                fontSize: 12.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Spacer(),
                            Row(
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.visibility_outlined,
                                      color: Colors.white,
                                    ),
                                    SizedBox(width: 10.w),
                                    Text(
                                      "100",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ],
                                ),
                                SizedBox(width: 10.w),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.chat_bubble_outline,
                                      color: Colors.white,
                                    ),
                                    SizedBox(width: 10.w),
                                    Text(
                                      "30",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: 7.h),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 10.w),
                    Expanded(
                      child: SizedBox(
                        height: 200.h,
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(25),
                              child: Container(
                                width: double.infinity,
                                height: 100.h,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: NetworkImage(
                                      "https://fifpro.org/media/5chb3dva/lionel-messi_imago1019567000h.jpg?rxy=0.32986930611281567,0.18704579979466449&rnd=133378758718600000",
                                    ),
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 10.h),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(25),
                              child: Container(
                                width: double.infinity,
                                height: 88.h,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: NetworkImage(
                                      "https://ichef.bbci.co.uk/news/480/cpsprodpb/4b33/live/12edab40-71c0-11ef-a237-49738a978907.jpg.webp",
                                    ),
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
