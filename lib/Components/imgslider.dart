import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class ImageSlider extends StatefulWidget {
  const ImageSlider({super.key});

  @override
  State<ImageSlider> createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  @override
  Widget build(BuildContext context) {
    return ImageSlideshow(
      width: double.infinity,
      height: 300,
      initialPage: 0,
      indicatorColor: Colors.red,
      indicatorBackgroundColor: Colors.grey,
      children: [
        Container(
          // height: 300,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assests/img1.PNG"),
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
                  "Quadient Inspire Services",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Your Custom CCM Development Partner",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Zai Systems has partnered with Quadient to provide its clients best in class CCM Development Services",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.grey.shade300,
                      fontSize: 20,
                      fontWeight: FontWeight.normal),
                )
              ]),
        ),
        Container(
          // height: 300,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assests/img2.PNG"),
              fit: BoxFit.cover,
              opacity: 20,
              colorFilter:
                  ColorFilter.mode(Colors.transparent, BlendMode.darken),
            ),
          ),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Development Teams",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Technical Resourses When You Need Them.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Zai Systems provides cost-effective onsite & virtual staffing solutions by building strong relationships and connecting people",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.grey.shade300,
                      fontSize: 20,
                      fontWeight: FontWeight.normal),
                )
              ]),
        ),
        Container(
          // height: 300,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assests/img3.PNG"),
              fit: BoxFit.cover,
              opacity: 20,
              colorFilter:
                  ColorFilter.mode(Colors.transparent, BlendMode.darken),
            ),
          ),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Process Automation",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Innovative Automation Techniques at your Finger Tips",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "We expertise in Robotic Process Automation, Process Mining, Webscraping and Document Processing.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.grey.shade300,
                      fontSize: 20,
                      fontWeight: FontWeight.normal),
                )
              ]),
        ),
        Container(
          // height: 300,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assests/img4.PNG"),
              fit: BoxFit.cover,
              opacity: 20,
              colorFilter:
                  ColorFilter.mode(Colors.transparent, BlendMode.darken),
            ),
          ),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "CallMiner Solutions",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "The CallMiner one-stop-shop",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Zai Systems is a certified CallMiner strategic partner helping customers leverage all the platform’s capabilities.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.grey.shade300,
                      fontSize: 20,
                      fontWeight: FontWeight.normal),
                )
              ]),
        ),
        Container(
          // height: 300,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assests/img.PNG"),
              fit: BoxFit.cover,
              opacity: 20,
              colorFilter:
                  ColorFilter.mode(Colors.transparent, BlendMode.darken),
            ),
          ),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Legacy Migration",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Migrate VFP, VB6 and Classic ASP Applications To .NET",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Zai Systems is your migration partner in converting legacy applications for security, performance & competitive advantages.",
                  textAlign: TextAlign.center,
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
      autoPlayInterval: 4000,
      isLoop: true,
    );
  }
}
