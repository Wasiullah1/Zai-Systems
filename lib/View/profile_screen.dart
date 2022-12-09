import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zai_system/View/Courses_Page.dart';
import 'package:zai_system/View/home.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.transparent,
      appBar: AppBar(
        title: const Text("My Profile"),
        centerTitle: true,
        backgroundColor: Colors.black,
        actions: [
          IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(
              Icons.close,
              size: 35,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.black, Color(0xff810000)])),
          child: Padding(
            padding: const EdgeInsets.only(top: 60.0),
            child: Center(
              child: Column(
                children: [
                  const CircleAvatar(
                    backgroundColor: Colors.grey,
                    radius: 60,
                    child: SizedBox(
                        width: 110,
                        height: 110,
                        child: ClipOval(
                          child: Image(
                            image: AssetImage(
                              "assets/prof.jpg",
                            ),
                            fit: BoxFit.fill,
                          ),
                        )),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Wasiullah",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  const Text('waseeullah14@gmail.com',
                      style: TextStyle(fontSize: 17, color: Colors.grey)),
                  const SizedBox(
                    height: 60,
                  ),
                  Container(
                    height: 350,
                    width: 350,
                    padding: const EdgeInsets.only(top: 15),
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(25),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 1.0,
                          spreadRadius: 1.0,
                          offset: Offset(
                            2.0,
                            2,
                          ),
                        )
                      ],
                    ),
                    child: ListView(children: [
                      GestureDetector(
                        onTap: () {
                          debugPrint('My Profile');
                        },
                        child: const ListTile(
                          leading: Icon(
                            Icons.person,
                            size: 30,
                          ),
                          title: Text(
                            'My Profile',
                            style: TextStyle(fontSize: 25),
                          ),
                          trailing: Icon(
                            Icons.arrow_forward_ios,
                            size: 26,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          debugPrint('Courses');
                        },
                        child: const ListTile(
                          leading: Icon(
                            Icons.article_outlined,
                            size: 30,
                          ),
                          title: Text(
                            'Courses',
                            style: TextStyle(fontSize: 23),
                          ),
                          trailing: Icon(
                            Icons.arrow_forward_ios,
                            size: 26,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          debugPrint('Privacy Policy');
                        },
                        child: const ListTile(
                          leading: Icon(
                            Icons.privacy_tip_outlined,
                            size: 30,
                          ),
                          title: Text(
                            'Privacy Policy',
                            style: TextStyle(fontSize: 25),
                          ),
                          trailing: Icon(
                            Icons.arrow_forward_ios,
                            size: 26,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          debugPrint('Terms and condition');
                        },
                        child: const ListTile(
                          leading: Icon(
                            Icons.document_scanner_outlined,
                            size: 30,
                          ),
                          title: Text(
                            'Terms & Conditions',
                            style: TextStyle(fontSize: 25),
                          ),
                          trailing: Icon(
                            Icons.arrow_forward_ios,
                            size: 26,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          debugPrint('Log out');
                        },
                        child: const ListTile(
                          leading: Icon(
                            Icons.logout,
                            size: 30,
                          ),
                          title: Text(
                            'Log Out',
                            style: TextStyle(fontSize: 25),
                          ),
                          trailing: Icon(
                            Icons.arrow_forward_ios,
                            size: 26,
                          ),
                        ),
                      ),
                    ]),
                  ),
                  SizedBox(
                    height: 20,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
