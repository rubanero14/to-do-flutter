import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
        body:Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 10),
                Text(todoItem["name"]!, style: GoogleFonts.lato(
                    textStyle: TextStyle(color: Colors.deepPurple, fontSize: 32),)),
                SizedBox(height: 10),
                Text(todoItem["place"]!, style: GoogleFonts.notoSans(
                    textStyle: TextStyle(color: Colors.black45, fontSize: 22),)),
                SizedBox(height: 10),
                Text(todoItem["description"]!, style: GoogleFonts.notoSans(
                    textStyle: TextStyle(color: Colors.black38, fontSize: 16),)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
