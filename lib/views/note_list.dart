import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:telegram_app/Models/note_for_listing.dart';
import 'package:telegram_app/services/notes_service.dart';
import 'package:telegram_app/views/note_delete.dart';
import 'package:telegram_app/views/note_modify.dart';

class NoteList extends StatefulWidget {

  @override
  _NoteListState createState() => _NoteListState();
}
//euta class vtra arko class???? 
//why?
//fix this
class _NoteListState extends State<NoteList> {
  NoteService get service => GetIt.I<NoteService>();
  
  List<NoteForListing> notes =[];

String formatDateTime(DateTime dateTime) {
  return '${dateTime.day}/${dateTime.month}/${dateTime.year}';
}

  @override
  void initState() {
    notes = service.getNotesList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('List of notes')),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
          .push(MaterialPageRoute(builder: (_) => NoteModify()));
        } ,
        child: Icon(Icons.add),
        ),
        body: ListView.separated(
          separatorBuilder: (_, __) => Divider(height:1, color:Colors.green),
          itemBuilder: (_, index) {
            return Dismissible(
              //ho yo key le  kun item dismiss hudai xa vanne kura track rakhxa 
              //vaneko note ko index assign garexau hamile 
              key: ValueKey(notes[index].noteID),
              //yo kata dismiss garne c
              direction: DismissDirection.startToEnd,
              onDismissed: (direction) {

              },
              confirmDismiss: (direction) async{
                final result = await showDialog(
                  context: context,
                  builder: (_) => NoteDelete()
                  );
                  print(result);
                  return result;
              },
              background: Container(
                color: Colors.red,
                padding: EdgeInsets.only(left: 16),
                child: Align(child: Icon(Icons.delete, color: Colors.white), alignment: Alignment.centerLeft),
              ),
              child: ListTile(
                title: Text(
                  notes[index].noteTitle,
                  style: TextStyle(color: Theme.of(context).primaryColor),
                ),
                subtitle: Text('Last edited on ${formatDateTime(notes[index].lastEditDateTime)}'),
                onTap: () {
                  Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => NoteModify(noteID: notes[index].noteID)));
                },
              ),
            );
          },
          itemCount: notes.length,
        ),
    );
  }
}