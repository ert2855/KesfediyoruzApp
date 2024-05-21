import 'package:flutter/material.dart';
import 'package:untitled/sehirler.dart';

void main() {
  runApp(MaterialApp(
    title: "app",
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
          body: Center(
            child: Column(children: [
              Padding(padding: const EdgeInsets.only(top: 120.0),
                child:  Text("KESFEDiYORUZ",
                style: TextStyle(fontFamily: 'JejuHallasan',fontSize: 30),),
              ),
                Image.asset("assets/images/logo.png",),
                Text("Lezzet ve Kültür Rotaları",
                  style: TextStyle(fontFamily: 'JejuHallasan',fontSize: 20)),
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>sehirler()));
              }, child: Text("Giriş")),
            ],),
          )
      ),
    );
  }
}


