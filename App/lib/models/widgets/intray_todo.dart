import 'package:flutter/material.dart';
import 'package:todo_app/models/constants.dart';

class IntrayTodo extends StatelessWidget {
  final String title;
  IntrayTodo({this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: kRedColour,
          boxShadow: [
            BoxShadow(color: Colors.black.withOpacity(0.5), blurRadius: 10.0)
          ]),
      child: Row(
        children: [
          Radio(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: kDarkTodoTitle,
              )
            ],
          ),
        ],
      ),
    );
  }
}
