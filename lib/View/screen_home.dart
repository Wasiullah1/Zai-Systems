import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zai_system/Controller/controller_home.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  final homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => Center(
          child: TextFormField(
            controller: homeController.controller,
            obscureText: homeController.secure.value,
            decoration: InputDecoration(
                suffixIcon: IconButton(
              icon: Icon(Icons.password),
              onPressed: () => homeController.secureText(),
            )),
          ),
        ),
      ),
    );
  }
}
