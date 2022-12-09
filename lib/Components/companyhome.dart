import 'package:flutter/material.dart';

class Companyhome extends StatefulWidget {
  const Companyhome({super.key});

  @override
  State<Companyhome> createState() => _CompanyhomeState();
}

class _CompanyhomeState extends State<Companyhome> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 100),
          child: Column(
            children: [
              Container(
                  decoration: BoxDecoration(color: Colors.black),
                  child: Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Text("Company",
                        style: TextStyle(color: Colors.red, fontSize: 20)),
                  )),
              SizedBox(
                height: 30,
              ),
              Text("Our Business Strategy Here.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold)),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Image(image: AssetImage("assets/team/owais.jpg")),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Welcome To",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                ),
              ),
              Text(
                "ZAI SYSTEMS (SMC-PRIVATE) LIMITED",
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
              Text(
                "\nIf you are worried about your new business then no need to worry because Zai Systems have ways out for all of your problems. \n \nZai Systems has a powerful combination of business experience and technological expertise providing clients best-in-className solutions, in software development projects. Zai Systems delivers high-quality, cost-effective, full lifecycle solutions for all sorts of development projects",
                style: TextStyle(
                  color: Colors.grey.shade400,
                  fontWeight: FontWeight.normal,
                  fontSize: 18,
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "\nOwais Ahmad Khan, CEO",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                    fontSize: 20,
                  ),
                ),
              ),
              Text(
                "\nA chief executive officer (CEO) is the highest-ranking executive of a firm. CEOs act as the company's public face and make major corporate decisions.",
                style: TextStyle(
                  color: Colors.grey.shade400,
                  fontWeight: FontWeight.normal,
                  fontSize: 18,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: InkWell(
                  onTap: () {},
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(
                          colors: [
                            Color.fromARGB(255, 156, 27, 27),
                            Color.fromARGB(255, 238, 22, 7)
                          ],
                          begin: FractionalOffset(0.7, 0.9),
                          end: FractionalOffset(0.0, 0.5),
                          stops: [0.0, 0.5],
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 18, horizontal: 25),
                        child: Text(
                          "More About Us",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.normal,
                            fontSize: 19,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
