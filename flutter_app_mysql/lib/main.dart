import 'dart:convert';
import 'package:flutterappmysql/pages/data_table.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

void main() =>  runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Server Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: DataTableDemo(),
    );
  }
}

/*class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    getData();
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
    );
  }

  Future getData() async {
    String myUrl = "http://localhost/branchdata/login.php";
*//*
    var url = 'http://localhost/branchdata/login.php';
    http.Response response = await http.get(url);
    var data = jsonDecode(response.body);
    print(" in login");
    print(data.toString());
*//*

    http.post(myUrl,
        headers: {
          'Accept':'application/json'
        },
        body: {
          "id": "1001",
          "password" : "123"
        } ).then((response){
      print('Response status : ${response.statusCode}');
      print('Response body : ${response.body}');

      Map mapValue =  json.decode(response.body);
      print('Token value : ${mapValue.values.toString()}');

    });
  }

  @override
  // ignore: must_call_super
  void initState() {
    getData();
  }

}*/
