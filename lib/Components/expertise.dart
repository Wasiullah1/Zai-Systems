import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class Expertise extends StatefulWidget {
  const Expertise({super.key});

  @override
  State<Expertise> createState() => _ExpertiseState();
}

class _ExpertiseState extends State<Expertise> {
  @override
  Widget build(BuildContext context) {
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
                    child: Text("Our Expertise",
                        style: TextStyle(color: Colors.red, fontSize: 20)),
                  )),
              SizedBox(
                height: 30,
              ),
              Text("Our Expertise In",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold)),
            ],
          ),
        ),
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CircularPercentIndicator(
                  radius: 80.0,
                  lineWidth: 13.0,
                  animation: true,
                  percent: 0.85,
                  center: new Text(
                    "85%",
                    style: new TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        color: Colors.white),
                  ),
                  footer: new Text(
                    "Design",
                    style: new TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white),
                  ),
                  circularStrokeCap: CircularStrokeCap.round,
                  progressColor: Colors.red,
                ),
                CircularPercentIndicator(
                  radius: 80.0,
                  lineWidth: 13.0,
                  animation: true,
                  percent: 0.90,
                  center: new Text(
                    "90%",
                    style: new TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        color: Colors.white),
                  ),
                  footer: new Text(
                    "Managed Services",
                    style: new TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white),
                  ),
                  circularStrokeCap: CircularStrokeCap.round,
                  progressColor: Colors.red,
                ),
              ],
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CircularPercentIndicator(
                  radius: 80.0,
                  lineWidth: 13.0,
                  animation: true,
                  percent: 0.7,
                  center: new Text(
                    "70%",
                    style: new TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        color: Colors.white),
                  ),
                  footer: new Text(
                    "Application",
                    style: new TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white),
                  ),
                  circularStrokeCap: CircularStrokeCap.round,
                  progressColor: Colors.red,
                ),
                CircularPercentIndicator(
                  radius: 80.0,
                  lineWidth: 13.0,
                  animation: true,
                  percent: 0.95,
                  center: new Text(
                    "95%",
                    style: new TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        color: Colors.white),
                  ),
                  footer: new Text(
                    "Development",
                    style: new TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white),
                  ),
                  circularStrokeCap: CircularStrokeCap.round,
                  progressColor: Colors.red,
                ),
              ],
            ),
            SizedBox(height: 30),
          ],
        ),
      ],
    );
  }
}
