import 'package:flutter/material.dart';
import 'package:to_do1/Widget/add.dart';
import 'package:to_do1/Widget/detail.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var todos = [
    {
      "name": "Clear Backlog",
      "place": "Home",
      "description": "Clear backlog coding lesson missed on Monday"
    },
    {
      "name": "Fetch Baby",
      "place": "Strawberry Wonderland",
      "description": "Fetch home baby Akshu"
    },
    {
      "name": "Have Dinner",
      "place": "Somewhere in MH",
      "description": "Bring family together"
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("Home"),
      actions: [
        IconButton(onPressed: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context)=>AddPage())
          );
        }, icon: Icon(Icons.add))
      ],
      ),
      body:ListView.builder(
          itemCount: todos.length,
          itemBuilder: (context,position){
            return ListTile(
              title: Text(todos[position]["name"]!),
              subtitle: Text(todos[position]["place"]!),
              trailing: Icon(Icons.chevron_right),
              onTap: (){
                Navigator.push(
                 context,
                  MaterialPageRoute(builder: (context)=>DetailPage(todoItem: todos[position],))
                );
              },
            );
          }),
    );
  }
}
