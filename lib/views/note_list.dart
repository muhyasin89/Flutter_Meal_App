import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../models/note_for_listing.dart';
import '../views/note_modify.dart';

class NoteList extends StatelessWidget {
  final notes = [
    new NoteForListing(
      noteID: "1",
      createDateTime: DateTime.now(),
      lastEditDateTime: DateTime.now(),
      noteTitle: "Note 1"
    ),
    new NoteForListing(
      noteID: "2",
      createDateTime: DateTime.now(),
      lastEditDateTime: DateTime.now(),
      noteTitle: "Note 2"
    ),
    new NoteForListing(
      noteID: "3",
      createDateTime: DateTime.now(),
      lastEditDateTime: DateTime.now(),
      noteTitle: "Note 3"
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('List of Nodes')),
        floatingActionButton: FloatingActionButton(onPressed: (){
          Navigator.of(context)
          .push(MaterialPageRoute(builder: (_)=> NoteModify()));
        },
        child: Icon(Icons.add),
      ),
      body: ListView.separated(
          itemBuilder: (_, index){
            return ListTile(
              title: Text(notes[index].noteTitle,
              style: TextStyle(color: Theme.of(context).primaryColor)),
              subtitle: Text("Last Edited on ${DateFormat("dd-MM-yyyy").format(notes[index].lastEditDateTime)}"),
            );
          }, 
          separatorBuilder: (_, __)=> Divider(height: 1.0, color: Colors.green), 
          itemCount: notes.length
        )
    );
  }
}