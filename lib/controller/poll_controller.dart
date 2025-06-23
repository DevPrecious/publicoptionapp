import 'package:get/get.dart';

class PollController extends GetxController {
  // Observable list to store poll options
  var options = <String>[].obs;
  
  @override
  void onInit() {
    super.onInit();
    // Initialize with two default options
    options.addAll(['Option 1', 'Option 2']);
  }
  
  // Method to add a new option
  void addOption() {
    options.add('Option ${options.length + 1}');
  }
  
  // Method to update an option text
  void updateOption(int index, String newText) {
    if (index >= 0 && index < options.length) {
      options[index] = newText;
    }
  }
}
