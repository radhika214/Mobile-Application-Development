import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';



class stackdemo extends StatelessWidget {

  const stackdemo({Key? key}) : super(key: key);



  _getcontainer(Color color, {double width = 100, double height = 100}) {

    return Container(color: color, width: width, height: height);

  }



  @override

  Widget build(BuildContext context) {

    return Scaffold(

      body: SafeArea(

        child: Stack(

          children: [

            _getcontainer(Colors.red, width: 500, height: 500),

            _getcontainer(Colors.blue, width: 400, height: 400),

            Positioned(child: _getcontainer(Colors.white)),

            Text(

              "Hello Flutter",

              style: GoogleFonts.pacifico(fontSize: 20),

            )

          ],

        ),

      ),

    );

  }

}