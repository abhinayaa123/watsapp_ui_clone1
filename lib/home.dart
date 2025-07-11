import 'package:flutter/material.dart';
import 'package:watsapp_ui_clone/Calls.dart';
import 'package:watsapp_ui_clone/Chat.dart';
import 'package:watsapp_ui_clone/Communities.dart';
import 'package:watsapp_ui_clone/Updates.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int index = 0;
  List<Widget>pages=[Chat(),Updates(),Communities(),Calls()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Watsapp",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        backgroundColor: Colors.black,

        centerTitle: false,
        actions: [
          Icon(Icons.qr_code_scanner, color: Colors.white),
          SizedBox(width: 20),
          Icon(Icons.camera_alt_outlined, color: Colors.white),
          SizedBox(width: 20),
          Icon(Icons.more_vert, color: Colors.white),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add_box, color: Colors.black),
        backgroundColor: Colors.green,
      ),
      bottomNavigationBar: BottomNavigationBar(currentIndex: index,onTap: (value) {
        setState(() {
          index = value;
        });
      },

      selectedItemColor: Colors.white,unselectedItemColor: Colors.grey,showUnselectedLabels: true ,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.chat),
              label: "Chat",
              backgroundColor: Colors.black),
          BottomNavigationBarItem(
              icon: Icon(Icons.update_outlined), label: "Updates"),
          BottomNavigationBarItem(
              icon: Icon(Icons.people_alt_outlined), label: "Community"),
          BottomNavigationBarItem(
              icon: Icon(Icons.call_outlined), label: "Call")
        ],
      ),
    );
  }
}
