import 'package:flutter/material.dart';
import 'package:hello_learn/01/01.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: const Text("Hello"),
          ),
          body: const MyContentBody(),
        )
    );
  }

}


class MyContentBody extends StatefulWidget {
  const MyContentBody({super.key});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ContentBodyState();
  }
}

class ContentBodyState extends State<MyContentBody> {

  var flag = true;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Checkbox(value: flag, onChanged: (val) {setState(() {
            flag = val!;
          });})
        ],
      ),
    );
  }

}
