import 'package:crazy_alarm/screens/todo_add.dart';
import 'package:flutter/material.dart';

import '../Database/todo_database.dart';

class ToDoList extends StatefulWidget {
  @override
  _TodoListState createState() => _TodoListState();
}

class _TodoListState extends State<ToDoList> {
  late Database tododb;
  List docs = [];

  initialise() {
    tododb = Database();
    tododb.initiliase();
    tododb.read().then((value) => {
          setState(() {
            docs = value;
          })
        });
  }

  @override
  void initState() {
    super.initState();
    initialise();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 32, vertical: 64),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Flexible(
            flex: 0,
            fit: FlexFit.tight,
            child: Text(
              'ToDo List',
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
          ),
          Flexible(
            child: ListView.builder(
              itemCount: docs.length,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  margin: EdgeInsets.all(10),
                  child: ListTile(
                    contentPadding: EdgeInsets.only(right: 30, left: 36),
                    title: Text(docs[index]['name']),
                  ),
                );
              },
            ),
          ),
          Flexible(
            flex: 0,
            fit: FlexFit.tight,
            child: FloatingActionButton(onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ToDoListAdd(),
                ),
              );
            },
              child: Icon(Icons.add),
            ),
          ),
        ],
      ),
    );
  }
}
