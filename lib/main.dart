import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:nursery_kiganjani/herufi.dart';
import 'package:flutter/services.dart';
import 'package:nursery_kiganjani/mifano.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_animate/flutter_animate.dart';



void main() => runApp(MaterialApp(
  title: "App",
  home: MyApp(),
));


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    precacheImage(AssetImage("assets/icons/bg.svg"), context);
    return MaterialApp(
      home: Scaffold(
        body: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
  /*  precacheImage(AssetImage("assets/icons/bg.svg"), context);
    precacheImage(AssetImage("assets/icons/abcd.svg"), context);
    precacheImage(AssetImage("assets/icons/mtoto.svg"), context);*/
    return Stack(
      children: [
        // SVG background
        Positioned.fill(
          child: SvgPicture.asset(
            'assets/icons/bg.svg',
            fit: BoxFit.cover,
          ),
        ),
        // Other widgets
        Center(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center, // Center vertically
           crossAxisAlignment: CrossAxisAlignment.center, // Center horizontally

           children: [
             ElevatedButton(
               onPressed: () {
                 // Define the button action
                 Navigator.push(
                   context,
                   MaterialPageRoute(builder: (context) => Herufi()),
                 );
               },
               style: ElevatedButton.styleFrom(
                 minimumSize: Size(200,80),
                 textStyle: TextStyle(fontSize: 20),
                 padding: EdgeInsets.all(12.0),
                 backgroundColor: Colors.purpleAccent,
               ),
               child: Row(
                 mainAxisSize: MainAxisSize.min,
                 children: [
                   SvgPicture.asset(
                     'assets/icons/abcd.svg', // Replace with your SVG file path
                     height: 36.0,
                     width: 36.0,
                   ),
                   SizedBox(width: 8.0), // Space between icon and text
                   AutoSizeText(
                     'Jifunze Herufi',
                     style: TextStyle(
                       color: Colors.black,
                     ),
                   ),
                 ],
               ),
             ), // Scale back to 0

             SizedBox(height: 20),
             ElevatedButton(
               onPressed: () {
                 // Define the button action
                 Navigator.push(
                   context,
                   MaterialPageRoute(builder: (context) => Mifano()),
                 );
               },
               style: ElevatedButton.styleFrom(
                 minimumSize: Size(200,80),
                 textStyle: TextStyle(fontSize: 20),
                 padding: EdgeInsets.all(12.0),
                 backgroundColor: Colors.amber,
               ),
               child: Row(
                 mainAxisSize: MainAxisSize.min,
                 children: [
                   SvgPicture.asset(
                     'assets/icons/mtoto.svg', // Replace with your SVG file path
                     height: 36.0,
                     width: 36.0,
                     color: Colors.black,
                   ),
                   SizedBox(width: 8.0), // Space between icon and text
                   AutoSizeText(
                     'Mifano',
                     style: TextStyle(
                       color: Colors.black,
                     ),
                   ),
                 ],
               ),
             ),
           ],
         ),
        ),
      ],
    );
  }
}
