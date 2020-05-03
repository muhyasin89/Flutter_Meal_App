import 'package:flutter/material.dart';

class NoteList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('List of Nodes')),
        floatingActionButton: FloatingActionButton(onPressed: (){

        },
        child: Icon(Icons.add),
      ),
      body: Container()
    );
  }
}