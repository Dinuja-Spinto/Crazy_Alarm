import 'package:flutter/material.dart';

class ToDoListAdd extends StatefulWidget {
  @override
  _TodoListAddState createState() => _TodoListAddState();
}

class _TodoListAddState extends State<ToDoListAdd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF2D2F41),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(32),
          child: Column(
            children: [
              Text(
                'Add ToDo',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
              SizedBox(
                height: 24,
              ),
              TextFormField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  focusColor: Colors.white,
                  labelStyle: TextStyle(color: Colors.white),
                  labelText: 'Click Here to Enter a ToDo',
                  fillColor: Colors.white,
                  hintText: 'Enter a ToDo',
                ),
                //controller: nameController,
              ),
              SizedBox(
                height: 24,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        color: Colors.transparent,
        child: BottomAppBar(
          color: Colors.transparent,
          child: ElevatedButton(
              onPressed: () {},
              child: Text(
                "Save",
                style: TextStyle(color: Colors.white),
              )),
        ),
      ),
    );
  }
}
