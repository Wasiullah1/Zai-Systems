import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zai_system/Components/aboutcompany.dart';
import 'package:zai_system/Components/companyhome.dart';
import 'package:zai_system/Components/expertise.dart';
import 'package:zai_system/Components/experts.dart';
import 'package:zai_system/Components/footer.dart';
import 'package:zai_system/Components/imagecarousel.dart';
import 'package:zai_system/Components/imgslider.dart';
import 'package:zai_system/Components/testimonial.dart';
import 'package:zai_system/View/Courses_Page.dart';
import 'package:zai_system/View/courseshome.dart';
import 'package:zai_system/View/profile_screen.dart';
import 'package:zai_system/View/team.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Zai Systems",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[800],
        child: ListView(
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(color: Color(0xff810000)),
              child: Column(
                children: const [
                  SizedBox(
                    height: 10,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.grey,
                    radius: 45,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Shahzain Ahmed",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  )
                ],
              ),
            ),
            Column(
              children: [
                ListTile(
                  leading: TextButton.icon(
                    onPressed: () => Get.to(Homescreen()),
                    label: const Text("HOME",
                        style: TextStyle(color: Colors.white)),
                    icon: const Icon(Icons.home, color: Colors.white),
                  ),
                ),
                ListTile(
                  leading: TextButton.icon(
                    onPressed: () => Get.to(ProfileScreen()),
                    label: const Text("PROFILE",
                        style: TextStyle(color: Colors.white)),
                    icon: const Icon(Icons.person, color: Colors.white),
                  ),
                ),
                ListTile(
                  leading: TextButton.icon(
                    onPressed: () => Get.to(Courses()),
                    label: const Text("COURSES",
                        style: TextStyle(color: Colors.white)),
                    icon: const Icon(Icons.my_library_books_sharp,
                        color: Colors.white),
                  ),
                ),
                ListTile(
                  leading: TextButton.icon(
                    onPressed: () => Get.to(Team()),
                    label: const Text("TEAM",
                        style: TextStyle(color: Colors.white)),
                    icon: const Icon(Icons.group, color: Colors.white),
                  ),
                ),
                ListTile(
                  leading: TextButton.icon(
                    onPressed: () => {},
                    label: const Text("LOG OUT",
                        style: TextStyle(color: Colors.white)),
                    icon: const Icon(Icons.logout, color: Colors.white),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.black, Colors.red],
            begin: FractionalOffset(0.0, 0.9),
            end: FractionalOffset(0.9, 0.0),
            stops: [0.3, 1.0],
          ),
        ),
        child: SingleChildScrollView(
          child: Column(children: [
            Carousel(),
            Companyhome(),
            CoursesHome(),
            AboutCompany(),
            Expertise(),
            ImageSlider(),
            Experts(),
            Testimonials(),
            Footer(),
          ]),
        ),
      ),
    );
  }
}
