import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zai_system/View/Courses_Page.dart';
import 'package:zai_system/View/detailscreen.dart';
import 'package:zai_system/View/home.dart';
import 'package:zai_system/View/profile_screen.dart';
import 'package:zai_system/model/company_model.dart';

class Team extends StatelessWidget {
  final companydata = Company_model.CompanyModels();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Center(
          child: Text(
            "Our Team",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      backgroundColor: Colors.black,
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
            begin: FractionalOffset(1.0, 0.0),
            end: FractionalOffset(0.0, 0.9),
            stops: [0.0, 1.0],
          ),
        ),
        child: Stack(children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.black, Colors.red],
                begin: FractionalOffset(1.0, 0.0),
                end: FractionalOffset(0.0, 0.9),
                stops: [0.0, 1.0],
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            child: ListView.separated(
                itemCount: companydata.length,
                separatorBuilder: (BuildContext context, int index) =>
                    Divider(color: Colors.transparent),
                itemBuilder: (BuildContext context, int index) {
                  return Column(children: [
                    SizedBox(
                      height: 20,
                      width: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        int id = companydata[index].id;
                        Get.to(DetailScreen(id: id));
                      },
                      child: Row(children: [
                        SizedBox(
                          height: 20,
                          width: 10,
                        ),
                        Row(children: [
                          SizedBox(
                            width: 10,
                          ),
                          SizedBox(
                            height: 130,
                            width: 130,
                            child: CircleAvatar(
                              backgroundColor: Colors.black,
                              child: SizedBox(
                                  width: 120,
                                  height: 120,
                                  child: ClipOval(
                                    child: Image.asset(
                                      companydata[index].image,
                                      fit: BoxFit.fill,
                                    ),
                                  )),
                            ),
                          ),
                        ]),
                        SizedBox(
                          width: 20,
                        ),
                        SizedBox(
                          width: 170,
                          height: 100,
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  companydata[index].name,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 18),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  companydata[index].position,
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 16),
                                ),
                              ]),
                        ),
                        Icon(
                          Icons.arrow_right,
                          color: Colors.red,
                        ),
                      ]),
                    ),
                    SizedBox(height: 10),
                  ]);
                }),
          ),
        ]),
      ),
    ));
  }
}
