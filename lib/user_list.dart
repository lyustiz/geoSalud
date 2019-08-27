import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'database/database.dart';
import 'package:moor_flutter/moor_flutter.dart';

class UserList extends StatefulWidget {

   

  UserList({Key key}) : super(key: key);

GeoDatabase db = GeoDatabase();

  _UserListState createState() => _UserListState(db);
   
  

  
}

class _UserListState extends State<UserList> {

  final db;

   _UserListState(this.db);

   

  @override
  Widget build(BuildContext context) {
    return Container(
       child: Text('data'),
    );
  }
}

