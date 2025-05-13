import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(
    MaterialApp(
      home:MyWidget())
  );
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}
//sss
class _MyWidgetState extends State<MyWidget> {
  List data = [];
  void  f()async{
    String api_vips = "https://dash.vips.uz/api/18/167/4460";
    final res = await http.get(Uri.parse(api_vips));
    if(res.statusCode== 200){
     final List json = jsonDecode(res.body);
     for(var i in json){
      data.add(Map.from(i));
     }
     setState(() {
       
     });
    }
  }


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    f();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(color: Colors.red, child: Column(
            children: [
              Text(data[index]["mahsulotnomi"]),
               Text(data[index]["narxi"]),
            ],
          )),
        ),),
    );
  }
}