import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class Carousel extends StatefulWidget {
  const Carousel({super.key});

  @override
  State<Carousel> createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  @override
  Widget build(BuildContext context) {
    return ImageSlideshow(
      width: double.infinity,
      height: 300,
      initialPage: 0,
      indicatorColor: Colors.red,
      indicatorBackgroundColor: Colors.grey,
      // ignore: sort_child_properties_last
      children: [
        Container(
          // height: 300,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assests/bg.png"),
              opacity: (10),
              fit: BoxFit.cover,
              colorFilter:
                  ColorFilter.mode(Colors.transparent, BlendMode.darken),
            ),
          ),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "ZaiSystems",
                  style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "ZaiSystems speciality teams create cost-effective innovative custom solutions to meet your challenges",
                  style: TextStyle(
                      color: Colors.grey.shade300,
                      fontSize: 17,
                      fontWeight: FontWeight.normal),
                )
              ]),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assests/bgI.png"),
              opacity: (10),
              fit: BoxFit.cover,
              colorFilter:
                  ColorFilter.mode(Colors.transparent, BlendMode.darken),
            ),
          ),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Courses Provided",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "ZaiSystems speciality teams create cost-effective innovative custom solutions to meet your challenges",
                  style: TextStyle(
                      color: Colors.grey.shade300,
                      fontSize: 17,
                      fontWeight: FontWeight.normal),
                )
              ]),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assests/bg3.jpg"),
              opacity: (10),
              fit: BoxFit.cover,
              colorFilter:
                  ColorFilter.mode(Colors.transparent, BlendMode.darken),
            ),
          ),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Software Provider",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "ZaiSystems speciality teams create cost-effective innovative custom solutions to meet your challenges",
                  style: TextStyle(
                      color: Colors.grey.shade300,
                      fontSize: 17,
                      fontWeight: FontWeight.normal),
                )
              ]),
        ),
      ],
      onPageChanged: (value) {
        print('Page changed: $value');
      },
      autoPlayInterval: 3000,
      isLoop: true,
    );
  }
}
