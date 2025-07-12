import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Calls extends StatelessWidget {
  const Calls({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Calls",
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
        child: Icon(Icons.call_outlined, color: Colors.black),
        backgroundColor: Colors.green,
      ),
      body: ListView(
        children: [ SizedBox(height: 20),
          Text("Favourites", style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
          SizedBox(height: 20),
          ListTile(
            leading: CircleAvatar(
              radius: 50,
              backgroundColor: Colors.green,
              child: Icon(CupertinoIcons.heart_fill, color: Colors.black),
            ),
            title: Text("Add favorite",style: TextStyle(fontWeight: FontWeight.bold),),
          ),ListTile(leading: Text("Recent",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),),
          SizedBox(height: 20),
          ListTile(
            leading: CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage(
                "undraw_finance-guy-avatar_vhop.png",
              ),
            ),
            title: Text("User"),
            subtitle: Row(children: [Icon(CupertinoIcons.arrow_down_left,color: Colors.red,),Text("July 10,4:13")],),trailing: Icon(Icons.call_outlined),
          ),
        ],
      ),
    );
  }
}
