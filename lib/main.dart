import 'package:flutter/material.dart';
// import 'package:get_it/get_it.dart';
// import 'package:telegram_app/services/notes_service.dart';
// import 'package:telegram_app/views/note_list.dart';
// import 'package:telegram_app/views/telegram.dart';

// void setupLocator() {
//   GetIt.I.registerLazySingleton(() => NoteService());
// }

void main() {
  // setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: NoteList(),
      // home: TelegramApp(),
    );
  }
}