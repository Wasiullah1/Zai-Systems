import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:zai/view/aboutcompany.dart';
import 'package:zai/view/companyhome.dart';
import 'package:zai/view/courseshome.dart';
import 'package:zai/view/experties.dart';
import 'package:zai/view/experts.dart';
import 'package:zai/view/footer.dart';
import 'package:zai/view/imagecarousel.dart';
import 'package:zai/view/imgslider.dart';
import 'package:zai/view/testimonial.dart';

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
          backgroundColor: Colors.black,
          leading: Image(
            image: AssetImage("assets/logowhite.png"),
            width: 80,
            height: 80,
          ),
          actions: <Widget>[
            SizedBox(
              width: 10,
            ),
            IconButton(
              icon: Icon(
                Icons.menu,
              ),
              onPressed: () {
                //Open the drawer
              },
            )
          ]),
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
