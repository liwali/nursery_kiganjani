import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nursery_kiganjani/bibi.dart';
import 'package:nursery_kiganjani/buibui.dart';
import 'package:nursery_kiganjani/jogoo.dart';
import 'package:nursery_kiganjani/keki.dart';
import 'package:nursery_kiganjani/kijiko.dart';
import 'package:nursery_kiganjani/kobe.dart';
import 'package:nursery_kiganjani/main.dart';
import 'package:nursery_kiganjani/meli.dart';
import 'package:nursery_kiganjani/mtoto.dart';
import 'package:nursery_kiganjani/paka.dart';
import 'package:nursery_kiganjani/redio.dart';
import 'package:nursery_kiganjani/reli.dart';
import 'package:nursery_kiganjani/saa.dart';
import 'package:nursery_kiganjani/taa.dart';
import 'package:nursery_kiganjani/ua.dart';
import 'package:nursery_kiganjani/viatu.dart';
import 'package:nursery_kiganjani/zawadi.dart';
import 'package:nursery_kiganjani/lala.dart';
import 'package:nursery_kiganjani/dada.dart';
import 'package:nursery_kiganjani/najaribu.dart';
import 'package:nursery_kiganjani/main.dart';
import 'package:nursery_kiganjani/main.dart';


void main() =>
    runApp(MaterialApp(
      title: "App",
      home: Mifano(),
    ));


class Mifano extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({ Key? key }) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*  appBar: AppBar(
        title: Text('Mifano'),
        automaticallyImplyLeading: true, // This will add a default back button
      ),*/

      appBar: AppBar(
        title: Text("Rudi"),
        leading: SizedBox(
          height: 40, // Customize the height
          width: 40,  // Customize the width
          child: IconButton(
            icon: Icon(Icons.home, size: 40), // Customize the icon size
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>MyApp()));
            },
          ),
        ),
      ),
        body: Container(child: Padding(
    padding: const EdgeInsets.all(10.0),
    child: GridView(children: [
    InkWell(
    onTap: (){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>Ua())
    );
    },
    child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.deepPurple,),
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    /*     Icon: SvgPicture.asset(
                     'assets/icons/ua.svg',
                     height: 24.0,
                     width: 24.0,
                     color: Colors.white, // Optional: set the color of the icon
                   ),*/
    //Icon(Icons.home,size: 50,color: Colors.white,),
    SizedBox(height: 20,),
    Expanded(child: SvgPicture.asset('assets/icons/uaa.svg',color: Colors.white,)),
    Expanded(child: AutoSizeText("ua",style: TextStyle(color: Colors.white,fontSize: 48),)),
    ],),
    ),
    ),
    InkWell(
    onTap: (){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>Bibi()));
    },
    child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.purpleAccent,),
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    SizedBox(height: 20,),
    Expanded(child: SvgPicture.asset('assets/icons/bibi.svg',color: Colors.white,)),
    Expanded(child: AutoSizeText("bibi",style: TextStyle(color: Colors.white,fontSize: 48),)),
    ],),
    ),
    ),
    InkWell(
    onTap: (){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>Buibui()));
    },
    child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.green,),
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    //Icon(Icons.settings,size: 50,color: Colors.white,),
    SizedBox(height: 20,),
    Expanded(child: SvgPicture.asset('assets/icons/buibui.svg',color: Colors.white,)),
    Expanded(child: AutoSizeText("buibui",style: TextStyle(color: Colors.white,fontSize: 48),)),
    ],),
    ),
    ),
      InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>Dada()));
        },
        child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.indigo,),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //Icon(Icons.settings,size: 50,color: Colors.white,),
              SizedBox(height: 20,),
              Expanded(child: SvgPicture.asset('assets/icons/dada.svg',color: Colors.white,)),
              Expanded(child: AutoSizeText("dada",style: TextStyle(color: Colors.white,fontSize: 48),)),
            ],),
        ),
      ),
    InkWell(
    onTap: (){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>Jogoo()));
    },
    child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.purple,),
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    //Icon(Icons.book,size: 50,color: Colors.white,),
    SizedBox(height: 20,),
    Expanded(child: SvgPicture.asset('assets/icons/jogoo.svg',color: Colors.white,)),
    Expanded(child: AutoSizeText("jogoo",style: TextStyle(color: Colors.white,fontSize: 48),)),
    ],),
    ),
    ),
    InkWell(
    onTap: (){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>Keki()));
    },
    child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.deepOrange,),
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    // Icon(Icons.book,size: 50,color: Colors.white,),
    SizedBox(height: 20,),
    Expanded(child: SvgPicture.asset('assets/icons/keki.svg',color: Colors.white,)),
    Expanded(child: AutoSizeText("keki",style: TextStyle(color: Colors.white,fontSize: 48),)),
    ],),
    ),
    ),
    InkWell(
    onTap: (){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>Kijiko()));
    },
    child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.purple,),
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    //Icon(Icons.book,size: 50,color: Colors.white,),
    SizedBox(height: 20,),
    Expanded(child: SvgPicture.asset('assets/icons/kijiko.svg',color: Colors.white,)),
    Expanded(child: AutoSizeText("kijiko",style: TextStyle(color: Colors.white,fontSize: 48),)),
    ],),
    ),
    ),
    InkWell(
    onTap: (){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>Kobe()));
    },
    child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.blue,),
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    //Icon(Icons.book,size: 50,color: Colors.white,),
    SizedBox(height: 20,),
    Expanded(child: SvgPicture.asset('assets/icons/kobe.svg',color: Colors.white,)),
    Expanded(child: AutoSizeText("kobe",style: TextStyle(color: Colors.white,fontSize: 48),)),
    ],),
    ),
    ),
      InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>Lala()));
        },
        child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.brown,),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //Icon(Icons.settings,size: 50,color: Colors.white,),
              SizedBox(height: 20,),
              Expanded(child: SvgPicture.asset('assets/icons/lala.svg',color: Colors.white,)),
              Expanded(child: AutoSizeText("lala",style: TextStyle(color: Colors.white,fontSize: 48),)),
            ],),
        ),
      ),
    InkWell(
    onTap: (){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>Meli()));
    },
    child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.pink,),
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    //Icon(Icons.book,size: 50,color: Colors.white,),
    SizedBox(height: 20,),
    Expanded(child: SvgPicture.asset('assets/icons/meli.svg',color: Colors.white,)),
    Expanded(child: AutoSizeText("meli",style: TextStyle(color: Colors.white,fontSize: 48),)),
    ],),
    ),
    ),
    InkWell(
    onTap: (){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>Mtoto()));
    },
    child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.green,),
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    // Icon(Icons.book,size: 50,color: Colors.white,),
    SizedBox(height: 20,),
    Expanded(child: SvgPicture.asset('assets/icons/child.svg',color: Colors.white,)),
    Expanded(child: AutoSizeText("mtoto",style: TextStyle(color: Colors.white,fontSize: 48),)),
    ],),
    ),
    ),
    InkWell(
    onTap: (){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>Paka()));
    },
    child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.indigo,),
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    //Icon(Icons.book,size: 50,color: Colors.white,),
    SizedBox(height: 20,),
    Expanded(child: SvgPicture.asset('assets/icons/paka.svg',color: Colors.white,)),
    Expanded(child: AutoSizeText("paka",style: TextStyle(color: Colors.white,fontSize: 48),)),
    ],),
    ),
    ),
    InkWell(
    onTap: (){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>Redio()));
    },
    child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.purple,),
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    //Icon(Icons.book,size: 50,color: Colors.white,),
    SizedBox(height: 20,),
    Expanded(child: SvgPicture.asset('assets/icons/redio.svg',color: Colors.white,)),
    Expanded(child: AutoSizeText("redio",style: TextStyle(color: Colors.white,fontSize: 48),)),
    ],),
    ),
    ),
    InkWell(
    onTap: (){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>Reli()));
    },
    child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.blue,),
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    // Icon(Icons.book,size: 50,color: Colors.white,),
    SizedBox(height: 20,),
    Expanded(child: SvgPicture.asset('assets/icons/reli.svg',color: Colors.white,)),
    Expanded(child: AutoSizeText("reli",style: TextStyle(color: Colors.white,fontSize: 48),)),
    ],),
    ),
    ),
    InkWell(
    onTap: (){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>Saa()));
    },
    child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.teal,),
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    //Icon(Icons.book,size: 50,color: Colors.white,),
    SizedBox(height: 20,),
    Expanded(child: SvgPicture.asset('assets/icons/saa.svg',color: Colors.white,)),
    Expanded(child: AutoSizeText("saa",style: TextStyle(color: Colors.white,fontSize: 48),)),
    ],),
    ),
    ),
    InkWell(
    onTap: (){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>Taa()));
    },
    child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.purple,),
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    //Icon(Icons.book,size: 50,color: Colors.white,),
    SizedBox(height: 20,),
    Expanded(child: SvgPicture.asset('assets/icons/taa.svg',color: Colors.white,)),
    Expanded(child: AutoSizeText("taa",style: TextStyle(color: Colors.white,fontSize: 48),)),
    ],),
    ),
    ),
    InkWell(
    onTap: (){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>Viatu()));
    },
    child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.pink,),
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    //Icon(Icons.book,size: 50,color: Colors.white,),
    SizedBox(height: 20,),
    Expanded(child: SvgPicture.asset('assets/icons/viatuu.svg',color: Colors.white,)),
    Expanded(child: AutoSizeText("viatu",style: TextStyle(color: Colors.white,fontSize: 48),)),
    ],),
    ),
    ),
    InkWell(
    onTap: (){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>Zawadi()));
    },
    child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.deepPurpleAccent,),
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    //Icon(Icons.book,size: 50,color: Colors.white,),
    SizedBox(height: 20,),
    Expanded(child: SvgPicture.asset('assets/icons/zawadii.svg',color: Colors.white,)),
    Expanded(child: AutoSizeText("zawadi",style: TextStyle(color: Colors.white,fontSize: 48),)),
    ],),
    ),
    ),
    ],
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 5,mainAxisSpacing: 10,crossAxisSpacing: 10),
    ),
    ),),
    );
  }
}
