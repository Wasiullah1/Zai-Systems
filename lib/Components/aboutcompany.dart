import 'package:flutter/material.dart';

class AboutCompany extends StatefulWidget {
  const AboutCompany({super.key});

  @override
  State<AboutCompany> createState() => _AboutCompanyState();
}

class _AboutCompanyState extends State<AboutCompany> {
  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 80),
            child: Column(
              children: [
                Container(
                    decoration: BoxDecoration(color: Colors.black),
                    child: Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Text("About Our Company",
                          style: TextStyle(color: Colors.red, fontSize: 20)),
                    )),
                SizedBox(
                  height: 30,
                ),
                Text("Services provide for you.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.black, borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Web and App",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Our skilled developers at Zaisystems have extensive experience working on website projects involving the development of ReactJS, AngularJS and VueJS.",
                      style: TextStyle(
                          color: Colors.grey.shade400,
                          fontSize: 15,
                          fontWeight: FontWeight.normal),
                    ),
                    Image(image: AssetImage("assests/webapp.png")),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.black, borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "E-commerce",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Through our honed engagement process we are able to add value and enrich your ecommerce...",
                      style: TextStyle(
                          color: Colors.grey.shade400,
                          fontSize: 15,
                          fontWeight: FontWeight.normal),
                    ),
                    Image(image: AssetImage("assests/ecom.png")),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.black, borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "24 Hours of Word Support",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "COPC, Six Sigma Certified Customer Support Team at Zai Systems is available 24 hours a day...",
                      style: TextStyle(
                          color: Colors.grey.shade400,
                          fontSize: 15,
                          fontWeight: FontWeight.normal),
                    ),
                    Image(image: AssetImage("assests/schedule.png")),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: InkWell(
              onTap: () {},
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color.fromARGB(255, 156, 27, 27),
                      Color.fromARGB(255, 238, 22, 7)
                    ],
                    begin: FractionalOffset(0.7, 0.9),
                    end: FractionalOffset(0.0, 0.5),
                    stops: [0.0, 0.5],
                  ),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 18, horizontal: 25),
                  child: TextButton(
    child:  Text(
      "Read More",
      style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.normal,
        fontSize: 19,
      ),
    ),onPressed: () {  },
    )
                ),
              ),
            ),
          )
        ]);
  }
}