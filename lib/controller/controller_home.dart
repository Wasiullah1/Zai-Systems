import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final controller = TextEditingController();
  final secure = true.obs;

  secureText() {
    secure.value = false;
  }
}
