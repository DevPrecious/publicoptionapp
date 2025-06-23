import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:publicoptionapp/controller/poll_controller.dart';
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
  final PollController _pollController = Get.put(PollController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Create Poll')),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraints.maxHeight),
              child: IntrinsicHeight(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20.0,
                    vertical: 15.0,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      // Question Section
                      ContainerWidget(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Row(
                                    children: [
                                      const RoundedIconWidget(
                                        icon: Icon(Icons.poll),
                                      ),
                                      SizedBox(width: 10.w),
                                      const Expanded(
                                        child: TextFieldWidget(
                                          hintText: 'Enter your question',
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const RoundedIconWidget(
                                  icon: Icon(Icons.more_vert),
                                ),
                              ],
                            ),
                            const Divider(),
                            SizedBox(height: 10.h),
                            Row(
                              children: [
                                const RoundedIconWidget(
                                  icon: Icon(Icons.photo_outlined),
                                ),
                                SizedBox(width: 10.w),
                                const RoundedIconWidget(icon: Icon(Icons.add)),
                              ],
                            ),
                          ],
                        ),
                      ),

                      SizedBox(height: 20.h),

                      // Options Section
                      Expanded(
                        child: ContainerWidget(
                          child: Obx(
                            () => Column(
                              children: [
                                ..._pollController.options.asMap().entries.map((
                                  entry,
                                ) {
                                  final index = entry.key;
                                  final option = entry.value;
                                  return Column(
                                    children: [
                                      OptionWidget(
                                        key: ValueKey('option_$index'),
                                        text: option,
                                        onChanged:
                                            (value) => _pollController
                                                .updateOption(index, value),
                                      ),
                                      if (index <
                                          _pollController.options.length - 1)
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                            vertical: 10.h,
                                          ),
                                          child: const Divider(),
                                        ),
                                    ],
                                  );
                                }).toList(),
                                SizedBox(height: 20.h),
                                SizedBox(
                                  width: 150.w,
                                  child: ButtonWidget(
                                    icon: Icons.add,
                                    text: 'Add option',
                                    onPressed: _pollController.addOption,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20.h),
                      SizedBox(
                        height: 40.h,
                        child: ButtonWidget(
                          text: 'Post Poll',
                          onPressed: () {
                            // Handle post poll
                          },
                        ),
                      ),
                      SizedBox(height: 20.h),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
