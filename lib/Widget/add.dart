import 'package:flutter/material.dart';

class AddPage extends StatefulWidget {
  const AddPage({Key? key}) : super(key: key);

  @override
  _AddPageState createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  var nameTextController = TextEditingController();
  var descriptionTextController = TextEditingController();
  var placeTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("Add")),
      body:SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextField(
                controller: nameTextController,
                decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Add Item name'
                  ),
              ),
              SizedBox(height:8),
              TextField(
                controller: descriptionTextController,
                decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Add Item description'
                  ),
              ),
              SizedBox(height:8),
              TextField(
                controller: placeTextController,
                decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Add Item place'
                  ),
              ),
              SizedBox(height:8),
              TextButton(onPressed: (){
                var newItem = {
                  "name": nameTextController.text,
                  "place": placeTextController.text,
                  "description": descriptionTextController.text,
                };
                  Navigator.pop(context, {
                    "newItem": newItem
                  });
              }, child: Text("Add new Item"))
            ],
          ),
        ),
      ),
    );
  }
}
