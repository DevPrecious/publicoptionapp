import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:publicoptionapp/const/base.dart';

class AuthController extends GetxController {
  var isLoading = false.obs;

  void login({required String username, required String password}) async {
    try {
      isLoading.value = true;
      var response = await http.post(
        Uri.parse(url),
        body: {"username": username, "password": password},
      );

      var data = json.decode(response.body);
      if (response.statusCode == 200) {
        print(data);
        Get.snackbar('Success', 'Login Successful');
      } else {
        Get.snackbar('Error', data['message']);
      }
    } catch (e) {
      print(e.toString());
    } finally {
      isLoading.value = false;
    }
  }

  void register({required String username, required String password}) async {
    try {
      isLoading.value = true;
      var response = await http.post(
        Uri.parse(url),
        body: {"username": username, "password": password},
      );

      var data = json.decode(response.body);
      if (response.statusCode == 200) {
        print(data);
        Get.snackbar('Success', 'Register Successful');
      } else {
        Get.snackbar('Error', data['message']);
      }
    } catch (e) {
      print(e.toString());
    } finally {
      isLoading.value = false;
    }
  }
}
