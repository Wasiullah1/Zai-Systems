import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class Testimonials extends StatefulWidget {
  const Testimonials({super.key});

  @override
  State<Testimonials> createState() => _TestimonialsState();
}

class _TestimonialsState extends State<Testimonials> {
  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 50),
            child: Column(
              children: [
                Container(
                    decoration: BoxDecoration(color: Colors.black),
                    child: Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Text("Testimonials",
                          style: TextStyle(color: Colors.red, fontSize: 20)),
                    )),
                SizedBox(
                  height: 20,
                ),
                Text("Testimonial.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          ImageSlideshow(
              width: double.infinity,
              height: 700,
              initialPage: 0,
              indicatorColor: Colors.red,
              indicatorBackgroundColor: Colors.grey,
              children: [
                // Container(
                //   // height: 300,
                //   width: MediaQuery.of(context).size.width,
                //   decoration: const BoxDecoration(color: Colors.white),
                // ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 300,
                          height: 300,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromARGB(255, 177, 27, 27),
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
                                  "assets/testimonial/chandra.jpg",
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Poland",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Colors.grey.shade400,
                                fontSize: 20,
                                fontWeight: FontWeight.normal),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "Excellent communication, follow thru and very dedicated! Complete ease working with Zai Systems and his team. All are organized and very efficient with their processes.",
                          style: TextStyle(
                              color: Colors.grey.shade400,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Chandra Keyser",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "CO-FOUNDER",
                              style: TextStyle(
                                  color: Colors.grey.shade400,
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal,
                                  fontStyle: FontStyle.italic),
                            ),
                          ],
                        ),
                      ]),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 300,
                          height: 300,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromARGB(255, 177, 27, 27),
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
                                  "assets/testimonial/ryan.jpg",
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Text(
                          "GERMANY",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Colors.grey.shade400,
                              fontSize: 20,
                              fontWeight: FontWeight.normal),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "Amazing company to work with. They were extremely knowledgeable and did an amazing job on our website design and conversion to the Shopify platform. They were very patient with us and were very fair in price. Very very happy with the outcome!",
                          style: TextStyle(
                              color: Colors.grey.shade400,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Ryan Donnelly",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "App Developer",
                              style: TextStyle(
                                  color: Colors.grey.shade400,
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal,
                                  fontStyle: FontStyle.italic),
                            ),
                          ],
                        )
                      ]),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 300,
                          height: 300,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromARGB(255, 177, 27, 27),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black26,
                                blurRadius: 8.0,
                                offset: Offset(0.0, 5.0),
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(4.0),
                            child: Container(
                              child: ClipOval(
                                child: Image.asset(
                                  "assets/testimonial/jason.jpg",
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Text(
                          "USA",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Colors.grey.shade400,
                              fontSize: 20,
                              fontWeight: FontWeight.normal),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "I worked with Zaisystem on multiple projects and continue to come back to them. They are professional, personable and deliver a great project. They work well with my project feedback, often times able to read between the lines of what I am saying, and are very timely with their turnaround times. ",
                          style: TextStyle(
                              color: Colors.grey.shade400,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Jason Galli",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "App Developer",
                              style: TextStyle(
                                  color: Colors.grey.shade400,
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal,
                                  fontStyle: FontStyle.italic),
                            ),
                          ],
                        ),
                      ]),
                )
              ]),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Stack(alignment: Alignment.topCenter, children: <Widget>[
              Padding(
                  padding: EdgeInsets.only(
                    top: 160 / 2.0,
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
                        padding: const EdgeInsets.only(
                          top: 15.0,
                          bottom: 15.0,
                          left: 20,
                          right: 20,
                        ),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                'Get in Touch',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 34.0,
                                    color: Colors.white),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'You will find yourself working in a true partnership that results in an incredible experience, and an end product that is the best.',
                                style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 20.0,
                                    color: Colors.grey.shade400),
                              ),
                              SizedBox(
                                height: 40,
                              ),
                              Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.email_outlined,
                                        color: Colors.grey.shade400,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        'zaisystems@gmail.com',
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
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Icon(
                                        Icons.phone,
                                        color: Colors.grey.shade400,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        '03346906960',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16.0,
                                            color: Colors.grey.shade400),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ])),
                  )),
            ]),
          )
        ]);
  }
}
