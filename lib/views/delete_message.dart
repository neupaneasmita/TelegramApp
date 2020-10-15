import 'package:flutter/material.dart';

class DeleteMessage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Warning'),
      content: Text('Are you want to delete this message?'),
      actions: <Widget>[
        FlatButton(
          child: Text('Yes'),
          onPressed: ()
          {
            Navigator.of(context).pop(true);
          },
          ),
          FlatButton(
          child: Text('Yes'),
          onPressed: ()
          {
            Navigator.of(context).pop(true);
          },
          ),
      ],
    );
  }
}