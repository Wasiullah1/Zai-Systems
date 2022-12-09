import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../model/company_model.dart';

class DetailScreen extends StatefulWidget {
  int id;
  DetailScreen({Key? key, required this.id}) : super(key: key);

  @override
  _DetailScreenState createState() => _DetailScreenState(id);
}

class _DetailScreenState extends State<DetailScreen> {
  final companydata = Company_model.CompanyModels();
  int id;
  _DetailScreenState(this.id);
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.black, Colors.red],
          begin: FractionalOffset(0.9, 0.0),
          end: FractionalOffset(0.0, 0.9),
          stops: [0.0, 1.0],
        ),
      ),
      child: Stack(children: [
        Positioned(
            top: 50,
            left: 10,
            child: IconButton(
              onPressed: () => Get.back(),
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
            )),
        Center(
          child: Positioned(
            top: 120,
            left: 0,
            //height: 570,
            width: 360,
            child: Center(
              child: Container(
                width: width,
                // height: 100,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                margin: const EdgeInsets.only(
                    left: 25, right: 25, top: 100, bottom: 50),
                //color: Colors.white,
                child: Container(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                          child:
                              Image(image: AssetImage(companydata[id].image))),
                      SizedBox(
                        width: 10,
                        height: 10,
                      ),
                      Center(
                        child: Text(
                          companydata[id].name,
                          style: TextStyle(
                              fontStyle: FontStyle.italic,
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.none),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Center(
                        child: Text(
                          companydata[id].position,
                          style: TextStyle(
                              fontStyle: FontStyle.italic,
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.none),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Center(
                        child: Text(
                          companydata[id].description,
                          style: TextStyle(
                              fontStyle: FontStyle.italic,
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.none),
                        ),
                      ),

                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ]),
    ));
  }
}
