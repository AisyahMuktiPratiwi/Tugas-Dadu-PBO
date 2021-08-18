import 'package:flutter/material.dart';

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('belajar flutter'),
        backgroundColor: Colors.teal,
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            MyCard(
              title: Text('fhfujgj'),
              icon: Icon(Icons.favorite),
            ),
          ],
        ),
      ),
    );
  }
}

class MyCard extends StatelessWidget {
  final Widget title;
  final Widget icon;
  MyCard({Key key, this.title, this.icon}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 20.0),
      child: Card(
        child: Container(
          padding: EdgeInsets.all(15.0),
          child: Column(
            children: [
              this.title,
              this.icon,
            ],
          ),
        ),
      ),
    );
  }
}
