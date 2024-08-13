import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';




class Najaribu extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Najaribu> {
  @override
  void initState() {
    super.initState();
    // Pre-cache the local asset image
    precacheMyImage(context, 'assets/images/bibi.png');
  }

  Future<void> precacheMyImage(BuildContext context, String imagePath) async {
    try {
      final ImageProvider imageProvider = AssetImage(imagePath);
      await precacheImage(imageProvider, context);
      print('Image pre-cached successfully');
    } catch (e) {
      print('Error pre-caching image: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Precache Image Example'),
      ),
      body: Center(
          child: InkWell(
            onTap:() {
              print('buibui');
            },
            child: Image.asset('assets/images/bibi.png',
              /* width: 200,
        height: 200,*/
              fit: BoxFit.cover,
            ),
          )
      ),
    );
  }
}