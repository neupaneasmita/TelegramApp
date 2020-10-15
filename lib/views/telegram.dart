import 'package:flutter/material.dart';
// import 'package:telegram_app/views/note_delete.dart';

class TelegramApp extends StatefulWidget {
  @override
  _TelegramAppState createState() => _TelegramAppState();
}

class _TelegramAppState extends State<TelegramApp> {
  bool _isSearching = false;
  @override
  Widget build(BuildContext context) {
    final appTitle = 'Telegram';

    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: this._isSearching
              ?
              // Text("Search")
              TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Search',
                  ),
                  style: TextStyle(color: Colors.white, fontSize: 20),
                )
              : Text(appTitle),
          actions: <Widget>[
            IconButton(
                icon:

                    //ternary operator to change the icon
                    _isSearching ? Icon(Icons.cancel) : Icon(Icons.search),
                onPressed: () {
                  setState(() {
                    this._isSearching = !this._isSearching;
                    print(this._isSearching);
                  });
                })
          ],
        ),
        drawer: Drawer(
          child: Column(
            children: <Widget>[
              Container(
                constraints: BoxConstraints.expand(height: 170.0),
                decoration: BoxDecoration(color: Colors.green),
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      //yo background image ko lagi
                      child: Container(
                          decoration: BoxDecoration(),
                          constraints: BoxConstraints.expand(height: 170),
                          height: 150,
                          child: Image.asset('assets/images/lighthouse.jpg',
                              fit: BoxFit.cover)),
                    ),

                    //yo profle image ko lagi
                    Positioned(
                      left: 20,
                      top: 30,
                      height: 60,
                      width: 60,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage('assets/images/image.png'))),
                      ),
                    ),

                    Positioned(
                        bottom: 20,
                        left: 20,
                        width: 130,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Asmita Neupane',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1.5),
                            ),
                            Text(
                              '+977-9846716504',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        )),
                    Positioned(
                        bottom: 20,
                        right: 20,
                        child: Icon(
                          Icons.arrow_drop_down,
                          color: Colors.white,
                          size: 35,
                        )),
                    Positioned(
                        top: 50,
                        right: 20,
                        child: Transform.rotate(
                          angle: 45,
                          child: Icon(
                            Icons.brightness_3,
                            color: Colors.white,
                            size: 30,
                          ),
                        )),
                  ],
                ),
                //stack use garne la yeha

                //container ko child ma ok

                //
              ),

              menuItem(Icons.group, "New Group"),
              menuItem(Icons.lock, "New Secret Chat"),
              menuItem(Icons.group_work, "New Channel"),
              menuItem(Icons.person, "Contacts"),
              menuItem(Icons.call, "Calls"),
              menuItem(Icons.bookmark_border, "Saved Messages"),
              menuItem(Icons.settings, "Settings"),
              Divider(
                color: Colors.red,
                height: 3,
              ),
              menuItem(Icons.person_add, "Invite Friends"),
              menuItem(Icons.help, "Telegram FAQ"),

              // DrawerHeader(child: null),
            ],
          ),
        ),
        body: Column(
          children: <Widget>[
            //start of a profile view
            // ListTile(
            //   //title would be different so we pass this as a parameter
            //   //yo k
            //   title: Text(
            //     'Joe Adam',
            //     style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            //   ),
            //   leading: Container(
            //     height: 60,
            //     width: 60,
            //     decoration: BoxDecoration(
            //         borderRadius: BorderRadius.all(Radius.circular(30)),
            //         image: DecorationImage(
            //             fit: BoxFit.cover,
            //             image: AssetImage('assets/images/image.png'))),
            //   ),
            //   subtitle: Text('Hey There!'),
            //   trailing: Text('11:03 PM'),
            // ),
            // Divider(),
//end of a profile view

            Flexible(
                child: ListView(
              children: <Widget>[
//

                Column(children: [
                  Dismissible(
                    key: ValueKey(1),
                    //yo kata dismiss garne c
                    direction: DismissDirection.startToEnd,
                    onDismissed: (direction) {},
                    confirmDismiss: (direction) async {
                      print('done');

                      final result = await showDialog(
                          context: context, builder: (_) => NoteDelete());
                      print(result);
                      return result;
                    },
                    background: Container(
                      color: Colors.red,
                      padding: EdgeInsets.only(left: 16),
                      child: Align(
                          child: Icon(Icons.delete, color: Colors.white),
                          alignment: Alignment.centerLeft),
                    ),
                    child: ListTile(
                      title: Text(
                        'name',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      leading: Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                    'assets/images/' + 'lighthouse.jpg'))),
                      ),
                      subtitle: Text('message'),
                      trailing: Text('lastSeen'),
                    ),
                  ),
                  Divider(thickness: 1),
                ]),

                //
                profile('1', 'Asmita', 'Hello', 'lighthouse.jpg', '11:00 PM'),
                profile('2', 'Asmita', 'Hello', 'image.png', '10:59 PM'),
                profile('3', 'Asmita', 'Hello', 'lighthouse.jpg', '11 PM'),
                profile('4', 'Asmita', 'Hello', 'lighthouse.jpg', '11 PM'),
                profile('5', 'Asmita', 'Hello', 'lighthouse.jpg', '11 PM'),
                profile('6', 'Asmita', 'Hello', 'lighthouse.jpg', '11 PM'),
                profile('7', 'Asmita', 'Hello', 'lighthouse.jpg', '11 PM'),
                profile('8', 'Asmita', 'Hello', 'lighthouse.jpg', '11 PM'),
                profile('9', 'Asmita', 'Hello', 'lighthouse.jpg', '11 PM'),
                profile('10', 'Asmita', 'Hello', 'lighthouse.jpg', '11 PM'),
                profile('11', 'Asmita', 'Hello', 'lighthouse.jpg', '11 PM'),
                profile('12', 'Asmita', 'Hello', 'lighthouse.jpg', '11 PM'),
              ],
            )),
            // Divider(),

//slider rakhnu parne hola hana
            // Divider(),
          ],
        ),
      ),
    );
  }
}

Column profile(
    String id, String name, String message, String imagePath, String lastSeen) {
  return Column(children: [
    Dismissible(
      key: ValueKey(id),
      //yo kata dismiss garne c
      direction: DismissDirection.startToEnd,
      onDismissed: (direction) {},
      confirmDismiss: (direction) {
        print('done');

        // final result = await showDialog(
        // context: context,
        // builder: (_) => NoteDelete()
        // );
        // print(result);
        // return result;
      },
      background: Container(
        color: Colors.red,
        padding: EdgeInsets.only(left: 16),
        child: Align(
            child: Icon(Icons.delete, color: Colors.white),
            alignment: Alignment.centerLeft),
      ),
      child: ListTile(
        title: Text(
          name,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        leading: Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(30)),
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/' + imagePath))),
        ),
        subtitle: Text(message),
        trailing: Text(lastSeen),
      ),
    ),
    Divider(thickness: 1),
  ]);
}

Container menuItem(IconData icon, String title) {
  return Container(
    height: 40,
    child: ListTile(
      leading: Icon(icon),
      title: Text(title,
          style: TextStyle(
            fontSize: 15,
          )),
    ),
  );
}