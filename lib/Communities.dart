import 'package:flutter/material.dart';
class Communities extends StatelessWidget {
  const Communities({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,appBar: AppBar(
      title: Text(
        "Communities",
        style: TextStyle(color: Colors.white, fontSize: 20),
      ),
      backgroundColor: Colors.black,

      centerTitle: false,
      actions: [
        Icon(Icons.qr_code_scanner, color: Colors.white),
        SizedBox(width: 20),
        Icon(Icons.more_vert, color: Colors.white),
      ],
    ),

    );
  }
}


