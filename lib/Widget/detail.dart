import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  // Creating a variable to store the data for this page..
  final todoItem;
  // Create constructor so data can be passed later..
  DetailPage({this.todoItem});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(title:Text("Detail")),
        body:Center(
          child: Column(
            children: [
              SizedBox(height: 10),
              Text(todoItem["name"]!),
              SizedBox(height: 10),
              Text(todoItem["place"]!),
              SizedBox(height: 10),
              Text(todoItem["description"]!),
            ],
          ),
        ),
      ),
    );
  }
}
