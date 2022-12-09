import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.black, Color(0xff810000)])),
      ),
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Zai Systems"),
        backgroundColor: Colors.black,
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[800],
        child: ListView(
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(color: Color(0xff810000)),
              child: Column(
                children: const [
                  SizedBox(
                    height: 10,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.grey,
                    radius: 45,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Wasiullah",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  )
                ],
              ),
            ),
            Column(
              children: const [
                ListTile(
                  title: Text(
                    "Home",
                    style: TextStyle(color: Colors.white),
                  ),
                  leading: Icon(
                    Icons.home,
                    color: Colors.white,
                  ),
                ),
                ListTile(
                  title: Text("Profile", style: TextStyle(color: Colors.white)),
                  leading: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                ),
                ListTile(
                  title: Text("Courses", style: TextStyle(color: Colors.white)),
                  leading: Icon(
                    Icons.my_library_books_sharp,
                    color: Colors.white,
                  ),
                ),
                ListTile(
                  title: Text("Log Out", style: TextStyle(color: Colors.white)),
                  leading: Icon(
                    Icons.logout,
                    color: Colors.white,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
