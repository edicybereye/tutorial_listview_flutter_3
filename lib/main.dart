import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HomeApp(),
  ));
}

class HomeApp extends StatelessWidget {
  final List<String> data = new List<String>.generate(200, (i) => "Data ke $i");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Listview Session 3"),
      ),
      body: Container(
        child: ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, i) {
            return new ListTile(
              leading: Icon(Icons.apps),
              title: Text("${data[i]}"),
            );
          },
        ),
      ),
    );
  }
}
