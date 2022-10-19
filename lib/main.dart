import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sudoku"),
      ),
      body: _body(),
    );
  }
}

class _body extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _bodyState();
  }
}

class _bodyState extends State<_body> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: GridView.builder(
        itemCount: 9,
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        childAspectRatio: 1,
        crossAxisSpacing: 5,
        mainAxisSpacing: 5,
    ),
    itemBuilder: (buildContext, index){
    return Container(
      color: Colors.grey,
      alignment: Alignment.center,
    child: GridView.builder(
      itemCount: 9,
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        childAspectRatio: 1,
        crossAxisSpacing: 5,
        mainAxisSpacing: 5,
      ),
      itemBuilder: (buildContext, index){
        return Container(
          color: Colors.amber,
          alignment: Alignment.center,
          child: Text("${index + 1} "),
        );
      },
    ),
    );
    },
    ),
    ),
    );
  }
}
