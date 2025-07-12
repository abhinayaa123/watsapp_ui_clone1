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
      bottomNavigationBar: BottomNavigationBar(currentIndex: index,onTap: (value) {
        setState(() {
          index = value;
        });
      },

      selectedItemColor: Colors.white,unselectedItemColor: Colors.white,showUnselectedLabels: true ,
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
      ),body: pages[index],
    );
  }
}
