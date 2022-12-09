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
      height: 500,
      initialPage: 0,
      indicatorColor: Colors.red,
      indicatorBackgroundColor: Colors.grey,
      children: [
        Container(
          // height: 300,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/bg.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "ZaiSystems",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 50,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "ZaiSystems speciality teams create cost-effective innovative custom solutions to meet your challenges",
                  style: TextStyle(
                      color: Colors.grey.shade300,
                      fontSize: 20,
                      fontWeight: FontWeight.normal),
                )
              ]),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/bgI.png"),
              fit: BoxFit.cover,
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
                      fontSize: 50,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "ZaiSystems speciality teams create cost-effective innovative custom solutions to meet your challenges",
                  style: TextStyle(
                      color: Colors.grey.shade300,
                      fontSize: 20,
                      fontWeight: FontWeight.normal),
                )
              ]),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/bg3.jpg"),
              fit: BoxFit.cover,
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
                      fontSize: 50,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "ZaiSystems speciality teams create cost-effective innovative custom solutions to meet your challenges",
                  style: TextStyle(
                      color: Colors.grey.shade300,
                      fontSize: 20,
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
