import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MaterialApp(
    title: 'Navigation Basics',
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget{
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Phone call'),
        centerTitle: true,
      ),
      body: Center(child: buildButton()),
    );
  }
  Widget buildButton(){
    final number = '+11121212';

    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(horizontal: 48, vertical: 12),
          textStyle: TextStyle(fontSize: 24),
        ),
        child: Text('Call'),
        onPressed: () async{
          launch('tel://$number');
          //await FlutterPhoneDirectCaller.callNumber(number);
        }
    );
  }
}