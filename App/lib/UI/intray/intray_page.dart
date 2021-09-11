import 'package:flutter/material.dart';
import 'package:todo_app/models/constants.dart';
import 'package:todo_app/models/widgets/intray_todo.dart';

class IntrayPage extends StatefulWidget {
  @override
  _IntrayPageState createState() => _IntrayPageState();
}

class _IntrayPageState extends State<IntrayPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: kDarkGreyColour,
      child: ListView(
        padding: EdgeInsets.only(top: 200),
        children: getList(),
      ),
    );
  }

  List<Widget> getList() {
    List<IntrayTodo> list = [];
    for (int i = 0; i < 10; i++) {
      list.add(IntrayTodo());
    }
    return list;
  }
}
