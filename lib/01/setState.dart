import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hello"),
      ),
      body:  ContentBody(),
    );
  }
}

class ContentBody extends StatefulWidget {
  const ContentBody({Key? key}) : super(key: key);

  @override
  State<ContentBody> createState() => _ContentBodyState();
}

/**
 * build出来的WIdget是需要依赖State中的变量
 * 在Flutter的运行过程中
 *  WIdget是不断的销毁和创建的
 *  当我们自己的状态发生改变是，并不希望重新生成一个 State
 * */

class _ContentBodyState extends State<ContentBody> {

  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(onPressed: () => setState(() {
                _count++;
              }), child: const Icon(Icons.add)),
              const SizedBox(width: 10,),
              ElevatedButton(onPressed: () => setState(() {
                _count--;
              }), child: const Icon(Icons.remove)),
            ],
          ),
          Text("current count:$_count", style: TextStyle(fontSize: 20),),
        ],
      ),
    );
  }
}
