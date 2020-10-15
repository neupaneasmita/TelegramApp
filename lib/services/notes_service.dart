// import 'dart:convert';

// import 'package:telegram_app/Models/api_response.dart';
import 'package:telegram_app/Models/note_for_listing.dart';
// import 'package:http/http.dart' as http;

class NoteService {

  // static const API = 'http://192.168.1.113:8080/v1/books';

  // Future<APIResponse<List<NoteForListing>>> getNotesList() {
  //   return http.get(API + '/books', headers: headers)
  //   .then((data)
  //   {
  //     if (data.statusCode == 200) {
  //       final jsonData = json.decode(data.body);
  //       final notes = <NoteForListing>[];

  //     } 
  //   }
  //   );
  // }

  // HardCode Data for service
  List<NoteForListing> getNotesList() {
    return [
      new NoteForListing(
          noteID: "1",
          createDateTime: DateTime.now(),
          lastEditDateTime: DateTime.now(),
          noteTitle: "Note 1"),
      new NoteForListing(
          noteID: "2",
          createDateTime: DateTime.now(),
          lastEditDateTime: DateTime.now(),
          noteTitle: "Note 2"),
      new NoteForListing(
          noteID: "3",
          createDateTime: DateTime.now(),
          lastEditDateTime: DateTime.now(),
          noteTitle: "Note 3"),
    ];
  }

}
