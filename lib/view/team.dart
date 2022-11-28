import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zai/model/company_model.dart';
import 'package:zai/view/detailscreen.dart';

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
        title: Center(
          child: Text(
            "Our Team",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      backgroundColor: Colors.black,
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
          Positioned(
              top: 20,
              left: 0,
              width: width,
              height: MediaQuery.of(context).size.height,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: ListView.separated(
                    itemCount: companydata.length,
                    separatorBuilder: (BuildContext context, int index) =>
                        Divider(color: Colors.transparent),
                    itemBuilder: (BuildContext context, int index) {
                      return Column(children: [
                        SizedBox(
                          height: 10,
                          width: 20,
                        ),
                        Row(children: [
                          SizedBox(
                            width: 10,
                          ),
                          SizedBox(
                            height: 110,
                            width: 110,
                            child: CircleAvatar(
                              backgroundColor: Colors.black,

                              // child: ClipRRect(
                              //   child: Image.asset(
                              //     companydata[index].image,
                              //     fit: BoxFit.fill,
                              //     width: 400,
                              //   ),
                              //   borderRadius: BorderRadius.circular(50.0),
                              // ),
                              child: SizedBox(
                                  width: 100,
                                  height: 100,
                                  child: ClipOval(
                                    child: Image.asset(
                                      companydata[index].image,
                                      fit: BoxFit.fill,
                                    ),
                                  )),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          SizedBox(
                            width: 190,
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
                          GestureDetector(
                              onTap: () {
                                String id = companydata[index].id;
                                Get.to(() => DetailScreen(id: int.parse(id)));
                              },
                              child: Icon(
                                Icons.arrow_right,
                                color: Colors.red,
                              )),
                        ]),
                      ]);
                    }),
              )),
        ]),
      ),
    ));
  }
}
