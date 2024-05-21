import 'package:flutter/material.dart';


void main() {
  runApp(MaterialApp(home: sehirler()));
}

class sehirler extends StatelessWidget{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sehirler"),
      ),
      body: Center(
        child: Column(children: [
        ElevatedButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context){
            return Ankara();
          }));
        }, child: Text("Ankara")),
        ElevatedButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context){
            return istanbul();
          }));
        }, child: Text("İstanbul"))
        ],),
      ),
    );
  }

  Scaffold Ankara() {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("ANKARA"),
      ),
            body: Center(
              child: Column(children: [
                Image.asset("assets/images/logo.png",),
                Text("Bu sayfa Ankara")
              ],)
            ),
          );
  }
  Scaffold istanbul() {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("İSTANBUL"),
      ),
            body: Center(
              child: Text("Bu Sayfa İstanbul"),
            ),
          );
  }
}