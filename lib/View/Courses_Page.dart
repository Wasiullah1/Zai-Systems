import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zai_system/View/detail_course.dart';
import 'package:zai_system/View/home.dart';
import 'package:zai_system/View/profile_screen.dart';
import 'package:zai_system/View/team.dart';
import 'package:zai_system/model/courses_model.dart';

// ignore: must_be_immutable
class Courses extends StatelessWidget {
  final data = model.getCoursesData();




  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.black,
            title: Row(children:[
          Expanded(
            flex: 3,
            child:   Text(
            "          Course Screen",
            style: TextStyle(
                color: Colors.white,
                fontSize:22,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.none),
          ),)
        ])),
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
                    leading: TextButton.icon(onPressed: () => Get.to(Homescreen()),
                      label: const Text("HOME", style: TextStyle(color: Colors.white)),
                      icon: const Icon(
                          Icons.home,
                          color: Colors.white),
                    ),
                  ),
                  ListTile(
                    leading: TextButton.icon(onPressed: () => Get.to(ProfileScreen()),
                      label: const Text("PROFILE", style: TextStyle(color: Colors.white)),
                      icon: const Icon(
                          Icons.person,
                          color: Colors.white),
                    ),
                  ),
                  ListTile(
                    leading: TextButton.icon(onPressed: ()=>Get.to(Courses()),
                      label: const Text("COURSES", style: TextStyle(color: Colors.white)),
                      icon: const Icon(
                          Icons.my_library_books_sharp,
                          color: Colors.white),
                    ),
                  ),
                  ListTile(
                    leading: TextButton.icon(onPressed: ()=>Get.to(Team()),
                      label: const Text("TEAM", style: TextStyle(color: Colors.white)),
                      icon: const Icon(
                          Icons.group,
                          color: Colors.white),
                    ),
                  ),
                  ListTile(
                    leading: TextButton.icon(onPressed: () => {},
                      label: const Text("LOG OUT", style: TextStyle(color: Colors.white)),
                      icon: const Icon(
                          Icons.logout,
                          color: Colors.white),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        body:Container(
        decoration: BoxDecoration(
    gradient: LinearGradient(
    colors: [Colors.black, Colors.red],
      begin: FractionalOffset(1.0,0.0),
      end: FractionalOffset(0.0,0.9),
      stops: [0.0,1.0],
    ),),
    child: Stack(
    children:[
    Positioned(
        top: 20,
        left: 0,
        width: width,
        height: MediaQuery.of(context).size.height,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.black,
              borderRadius: BorderRadius.circular(20),),
            child: ListView.separated(
          itemCount: data.length,
          separatorBuilder: (BuildContext context, int index) => Divider(color: Colors.white),
          itemBuilder: (BuildContext context, int index) {
            return TextButton(
                onPressed: (){
                  int id = data[index].id;
                  Get.to(DetailPage(id: id));
                },
                child: Column(
              children: [
                SizedBox(height: 8,),
                Row(children: [
                 SizedBox(width: 10,),
                 Container(
                   height: 80,
                   width: 150,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(40),
                  // color: Colors.white
                   ),
                   child: Image(
                     image: AssetImage(data[index].image),
                     fit: BoxFit.fill,

                   ),

                 ),
                  SizedBox(width: 20,),
               SizedBox(
                       width: 200,
                       height: 90,
                       child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children:[
                         Text(data[index].name,
                           style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white, fontSize: 18),),
                        SizedBox(height: 10,),
                         Text("${data[index].Shortdescription}",
                             style: TextStyle(color: Colors.white, fontSize: 12,fontStyle: FontStyle.italic), ),

                       ]
                       ),
               ),
                ]),
                SizedBox(height: 7,),

                Row(children: [
                  SizedBox(width: 270,),

                  SizedBox(
                    width: 50,
                    height: 50,
                    child: Text('More', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,color: Colors.red),),

                  ),

                ]),
                SizedBox(height: 7,), ],
            ));
          },
        ))
    )]
    )
        )
    );
  }
}
