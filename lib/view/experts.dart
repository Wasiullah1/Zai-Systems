import 'package:flutter/material.dart';

class Experts extends StatefulWidget {
  const Experts({super.key});

  @override
  State<Experts> createState() => _ExpertsState();
}

class _ExpertsState extends State<Experts> {
  @override
  Widget build(BuildContext context) {
    final double circleRadius = 160.0;
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 60),
            child: Column(
              children: [
                Container(
                    decoration: BoxDecoration(color: Colors.black),
                    child: Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Text("Our Experts",
                          style: TextStyle(color: Colors.red, fontSize: 20)),
                    )),
                SizedBox(
                  height: 30,
                ),
                Text("Our Experts Team",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          Padding(
              padding: const EdgeInsets.all(15.0),
              child: Stack(alignment: Alignment.topCenter, children: <Widget>[
                Padding(
                    padding: EdgeInsets.only(
                      top: circleRadius / 2.0,
                    ),
                    child: Container(
                      height: 320.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        color: Color.fromARGB(255, 48, 47, 47),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 8.0,
                            offset: Offset(0.0, 5.0),
                          ),
                        ],
                      ),
                      width: double.infinity,
                      child: Padding(
                          padding:
                              const EdgeInsets.only(top: 15.0, bottom: 15.0),
                          child: Column(children: <Widget>[
                            SizedBox(
                              height: circleRadius / 2,
                            ),
                            Text(
                              'Huzaifa Ali',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 34.0,
                                  color: Colors.white),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'React Developer',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0,
                                  color: Colors.red),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.location_on,
                                  color: Colors.grey.shade400,
                                ),
                                Text(
                                  'Pakistan',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16.0,
                                      color: Colors.grey.shade400),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16),
                              child: Text(
                                'Yes, I am a Reactjs Developer. I have a passion for Web Developement.',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0,
                                    color: Colors.grey.shade400),
                              ),
                            ),
                          ])),
                    )),
                Container(
                  width: circleRadius,
                  height: circleRadius,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.black,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 8.0,
                        offset: Offset(0.0, 5.0),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(2.0),
                    child: Container(
                      child: ClipOval(
                        child: Image.asset(
                          "assets/team/huzaifa.jpeg",
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                ),
              ])),
          Padding(
              padding: const EdgeInsets.all(15.0),
              child: Stack(alignment: Alignment.topCenter, children: <Widget>[
                Padding(
                    padding: EdgeInsets.only(
                      top: circleRadius / 2.0,
                    ),
                    child: Container(
                      height: 300.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        color: Color.fromARGB(255, 48, 47, 47),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 8.0,
                            offset: Offset(0.0, 5.0),
                          ),
                        ],
                      ),
                      width: double.infinity,
                      child: Padding(
                          padding:
                              const EdgeInsets.only(top: 15.0, bottom: 15.0),
                          child: Column(children: <Widget>[
                            SizedBox(
                              height: circleRadius / 2,
                            ),
                            Text(
                              'Taimoor Ali',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 34.0,
                                  color: Colors.white),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'App Developer',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0,
                                  color: Colors.red),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.location_on,
                                  color: Colors.grey.shade400,
                                ),
                                Text(
                                  'Pakistan',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16.0,
                                      color: Colors.grey.shade400),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16),
                              child: Text(
                                'Yes, I am a App Developerr. I have a passion for App Developement.',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0,
                                    color: Colors.grey.shade400),
                              ),
                            ),
                          ])),
                    )),
                Container(
                  width: circleRadius,
                  height: circleRadius,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.black,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 8.0,
                        offset: Offset(0.0, 5.0),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(2.0),
                    child: Container(
                        child: Icon(
                      Icons.person,
                      color: Colors.white,
                    )
                        // ClipOval(
                        //   child: Image.asset(
                        //     "assets/team/huzaifa.jpeg",
                        //     fit: BoxFit.fill,
                        //   ),
                        // ),
                        ),
                  ),
                ),
              ])),
          Padding(
              padding: const EdgeInsets.all(15.0),
              child: Stack(alignment: Alignment.topCenter, children: <Widget>[
                Padding(
                    padding: EdgeInsets.only(
                      top: circleRadius / 2.0,
                    ),
                    child: Container(
                      height: 320.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        color: Color.fromARGB(255, 48, 47, 47),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 8.0,
                            offset: Offset(0.0, 5.0),
                          ),
                        ],
                      ),
                      width: double.infinity,
                      child: Padding(
                          padding:
                              const EdgeInsets.only(top: 15.0, bottom: 15.0),
                          child: Column(children: <Widget>[
                            SizedBox(
                              height: circleRadius / 2,
                            ),
                            Text(
                              'Mishal Khan',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 34.0,
                                  color: Colors.white),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Accounts Manager',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0,
                                  color: Colors.red),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.location_on,
                                  color: Colors.grey.shade400,
                                ),
                                Text(
                                  'Pakistan',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16.0,
                                      color: Colors.grey.shade400),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16),
                              child: Text(
                                'Yes, I am a Accounts Manager. I have a passion for Accounts Managing.',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0,
                                    color: Colors.grey.shade400),
                              ),
                            ),
                          ])),
                    )),
                Container(
                  width: circleRadius,
                  height: circleRadius,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.black,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 8.0,
                        offset: Offset(0.0, 5.0),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(2.0),
                    child: Container(
                      child: Icon(
                        Icons.person,
                        color: Colors.white,
                      ),
                      // ClipOval(
                      //   child: Image.asset(
                      //     "assets/team/huzaifa.jpeg",
                      //     fit: BoxFit.fill,
                      //   ),
                      // ),
                    ),
                  ),
                ),
              ])),
        ]);
  }
}
