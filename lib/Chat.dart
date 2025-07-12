import 'package:flutter/material.dart';

class Chat extends StatelessWidget {
  const Chat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,appBar: AppBar(
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
    ),  floatingActionButton: FloatingActionButton(
      onPressed: () {},
      child: Icon(Icons.add_box, color: Colors.black),
      backgroundColor: Colors.green,
    ),

      body: ListView(
        children: [
          ListTile(
            leading: CircleAvatar(radius: 50,
              backgroundImage: AssetImage(
                "undraw_businesswoman-avatar_ktl2.png",
              ),
            ),title: Text("User"),subtitle: Text("hey"),trailing: Text("9:00am"),
          ),
        ],
      ),
    );
  }
}
