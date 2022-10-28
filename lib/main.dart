import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text("First Widget")),
        body: FirstWidget())));
          }
}
class FirstWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return(Center(child: 
        ElevatedButton(child: Text("First widget"),
        onPressed:() {
          Navigator.push(context,MaterialPageRoute(builder: (context)=>SecondWidget()));}
          ,),
          ));
  

  }

}
class SecondWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text("Second Widget")),
        body: Center(child: 
        ElevatedButton(child: Text("Second widget"),
        onPressed:() {
          Navigator.pop(context);})
          ,))));
     }
}
