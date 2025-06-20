import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:publicoptionapp/widgets/button_widget.dart';
import 'package:publicoptionapp/widgets/container_widget.dart';
import 'package:publicoptionapp/widgets/option_widget.dart';
import 'package:publicoptionapp/widgets/rounded_icon_widget.dart';
import 'package:publicoptionapp/widgets/text_field_widget.dart';

class CreatePollScreen extends StatefulWidget {
  const CreatePollScreen({super.key});

  @override
  State<CreatePollScreen> createState() => _CreatePollScreenState();
}

class _CreatePollScreenState extends State<CreatePollScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Create Poll')),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
        child: Column(
          children: [
            ContainerWidget(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            RoundedIconWidget(icon: Icon(Icons.poll)),
                            SizedBox(width: 10.w),
                            Expanded(
                              child: TextFieldWidget(
                                hintText: 'Enter your question.',
                              ),
                            ),
                          ],
                        ),
                      ),
                      RoundedIconWidget(icon: Icon(Icons.more_vert)),
                    ],
                  ),
                  Divider(),
                  SizedBox(height: 10.h),
                  Row(
                    children: [
                      RoundedIconWidget(icon: Icon(Icons.photo_outlined)),
                      SizedBox(width: 10.w),
                      RoundedIconWidget(icon: Icon(Icons.add)),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.h),
            ContainerWidget(
              child: Column(
                children: [
                  OptionWidget(text: 'Option 1'),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10.h),
                    child: Divider(),
                  ),
                  OptionWidget(text: 'Option 2'),
                  SizedBox(height: 20.h),
                  SizedBox(
                    width: 150.w,
                    child: ButtonWidget(icon: Icons.add, text: 'Add option'),
                  ),
                ],
              ),
            ),
            Spacer(),
            SizedBox(height: 40.h, child: ButtonWidget(text: 'Post Poll')),
            SizedBox(height: 20.h),
          ],
        ),
      ),
    );
  }
}
