// Sir ka
import 'dart:ui';

import 'package:flutter/material.dart';

class Home1 extends StatelessWidget {
  @override
  Widget build(BuildContext bt) {
    const path = 'https://c.tenor.com/8BUHGz3NKKUAAAAC/angry-frustrated.gif';
    //const path= 'https://pbs.twimg.com/profile_images/1208234904405757953/mT0cFOVQ_400x400.jpg';
    return Scaffold(
        drawer: Drawer(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.yellow,
          onPressed: () {},
          child: Text('+'),
        ),
        appBar: AppBar(
          //leading: Icon(Icons.menu),
          actions: [
            Icon(
              Icons.phone,
              color: Colors.black,
            ),
            SizedBox(
              width: 30,
            ),
            Icon(Icons.message),
            SizedBox(width: 10)
          ],
          backgroundColor: Colors.orangeAccent,
          title: Text('First App 2022'),
        ),
        backgroundColor: Colors.tealAccent,
        body: Container(
          height: 120.0,
          width: 120.0,
          decoration: BoxDecoration(
            border: Border.all(
                width: 2, color: Colors.black, style: BorderStyle.solid),
            image: DecorationImage(
              image: AssetImage('images/avatar.png'),
              fit: BoxFit.fill,
            ),
            shape: BoxShape.circle,
          ),
        )
        //
        // body: Image.asset('images/deadpool.jpeg'),
        // Image.network(path)
        //  body: SafeArea(child: Center(
        //    child: Text('hi Flutter',
        //    style: TextStyle(fontSize: 40),),
        //  )),
        );
  }
}
