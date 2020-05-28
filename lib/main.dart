import 'package:flutter/material.dart';
import 'dart:convert';
import 'user.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: JSONTest(),
    );
  }
}

class JSONTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    String json = '{"name":"yongokim", "email":1,"your_age":20,"address":{"street":"victory","city":"i dont know"}}';
    
    Map<String, dynamic> userMap = jsonDecode(json);// json--> 디코드 (소스코드에서 알아들 수 있도록 )

    var user = User.fromJson(userMap); //같은 타입인 Map을 넣기.
    var jsonData = user.toJson(); 

    return Scaffold(
      // body: Center(child: Text("Name is :${userMap['name']} \n Your Email is : ${userMap['email']}")),
      body: Center(
          child:
              Text("Name is :${user.name} \n Your Email is : ${user.email} \n ${user.age} \n $jsonData"  )),
    ); 
  }
}


