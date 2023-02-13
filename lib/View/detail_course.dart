import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zai_system/model/courses_model.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DetailPage extends StatefulWidget {
  int  id;
  DetailPage({Key? key, required this.id }) : super(key: key);

  @override
  _DetailPageState createState() => _DetailPageState(id);
}


class _DetailPageState extends State<DetailPage> {
  final data = model.getCoursesData();
  int id;
  _DetailPageState(this.id);

  void launchWhatsApp(
      {required int phone,
        required String message,
      }) async {
    String url() {
      if (Platform.isAndroid) {
        // add the [https]
        return "https://wa.me/$phone/?text=${Uri.parse(message)}"; // new line
      } else {
        // add the [https]
        return "https://api.whatsapp.com/send?phone=$phone=${Uri.parse(message)}"; // new line
      }
    }

    if (await canLaunch(url())) {
      await launch(url());
    } else {
      throw 'Could not launch ${url()}';
    }
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return  Scaffold(
      body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.black, Colors.red],
              begin: FractionalOffset(0.9,0.0),
              end: FractionalOffset(0.0,0.9),
              stops: [0.0,1.0],
            ),),
        child: Stack(
          children: [
            Positioned(
                top: 50,
                left: 10,
                child: IconButton(
                  onPressed: () => Get.back(),
                  icon: Icon(Icons.arrow_back_ios, color: Colors.white,),
                )),
            Positioned(
              top: 120,
              left: 0,
              height: 100,
              width: width,
              child: Container(
                width: width,
                height: 100,
                decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(20),),
                margin: const EdgeInsets.only(left: 25, right: 25),
               //color: Colors.white,
                child: Container(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundImage: AssetImage(data[id].image),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                      data[id].name,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                decoration: TextDecoration.none),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(Icons.watch_later, color: Color(0xFF69c5df)),
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        data[id].name,
                                        style: TextStyle(
                                            fontSize: 11,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w700),
                                      ),
                                      Text(
                                        "Deadline",
                                        style: TextStyle(
                                            fontSize: 10, color: Color(0xFFacacac)),
                                      )
                                    ],
                                  )
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(Icons.monetization_on,
                                      color: Color(0xFFfb8483)),
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        '${data[id].rate}',
                                        style: TextStyle(
                                            fontSize: 11,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w700),
                                      ),
                                      Text(
                                        "Prize",
                                        style: TextStyle(
                                            fontSize: 10, color: Color(0xFFacacac)),
                                      )
                                    ],
                                  )
                                ],
                              ),

                            ],
                          ),
                        ],
                      ),
                      Expanded(child: Container()),

                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: 320,
              left: 0,
              width: width,
              height: height,
              child: Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.black, Colors.red],
                  begin: FractionalOffset(0.9,0.0),
                  end: FractionalOffset(0.0,0.9),
                  stops: [0.0,1.0],
                ),)
              ),
            ),
         Positioned(
             top: 250,
             left: 0,
             child: Container(
                 margin: const EdgeInsets.only(left: 25, right: 20),
                 decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(20),
                     color: Colors.white,
                     boxShadow: [
                       BoxShadow(
                           blurRadius: 20,
                           spreadRadius: 1,
                           offset: Offset(0, 10),
                           color: Colors.grey.withOpacity(0.2))
                     ]),
           height: 420,
           width: 320,
           child:Column(
          children:[
            SizedBox(height: 10,),
            Padding(padding: EdgeInsets.fromLTRB(5, 5, 100, 0),
             child: Text(
              "Description",
              style: TextStyle(
                  fontSize: 25, fontWeight: FontWeight.bold),
            ),),
           Container(
             height: 270,
             width: 300,
             margin: const EdgeInsets.only(left: 10, right: 10),
             child:  SingleChildScrollView(
             child: Text(
               data[id].description,
               style:
               TextStyle(fontSize: 15, color: Color(0xFFb8b8b8),fontStyle: FontStyle.normal),
             ),
           ),),
            SizedBox(
              height: 10,
            ),
            Divider(
              thickness: 1.0,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 10,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "WhatsApp",
                      style: TextStyle(
                          fontSize:11,
                          color: Colors.black,
                          fontWeight: FontWeight.w700),
                    ),
                    TextButton.icon(
                      onPressed: () => {
                        launchWhatsApp(phone: 03332959077, message: 'Hello'),
                      }, icon: FaIcon(
                      FontAwesomeIcons.whatsapp,
                      color: Colors.green,
                    ), label: Text(''),
                    )
                  ],
                )
              ],
            ),
          ])
         ))


            //))
          ],
        ),
      ),
    );
  }
}
