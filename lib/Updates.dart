import 'package:flutter/material.dart';

class Updates extends StatelessWidget {
  const Updates({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          "Updates",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        backgroundColor: Colors.black,

        centerTitle: false,
        actions: [
          Icon(Icons.qr_code_scanner, color: Colors.white),
          SizedBox(width: 20),
          Icon(Icons.search, color: Colors.white),
          SizedBox(width: 20),
          Icon(Icons.more_vert, color: Colors.white),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.camera_alt_outlined, color: Colors.black),
        backgroundColor: Colors.green,
      ),
      body: ListView(
        children: [
          SizedBox(height: 20),
          Text("Status", style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white)),
          SizedBox(height: 20),
          ListTile(
            leading: CircleAvatar(
              radius: 60,
              child: Stack(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage(
                      "undraw_businesswoman-avatar_ktl2.png",
                    ),
                  ),Positioned(child:Icon(Icons.add_box_rounded, size:20,color: Colors.green),bottom:0,right: 0,)

                ],
              ),
            ),
            title: Text("Add status",style:TextStyle(fontWeight: FontWeight.bold,color: Colors.white)),
            subtitle: Text("Disappear after 24 hours",style: TextStyle(color: Colors.white),),
          ),
          Text("Recent updates",style: TextStyle(color: Colors.white),),
          SizedBox(height: 20),
          ListTile(
            leading: CircleAvatar(
              radius: 60,
              child: CircleAvatar(
                backgroundImage: AssetImage(
                  "undraw_finance-guy-avatar_vhop.png",
                ),
              ),
            ),
            title: Text("User1",style:TextStyle(fontWeight: FontWeight.bold,color: Colors.white)),
            subtitle: Text("Yesterday",style: TextStyle(color: Colors.white),),
          ),
        ],
      ),
    );
  }
}
