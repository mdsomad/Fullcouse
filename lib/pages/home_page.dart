import 'package:flutter/material.dart';
import 'package:flutter_full_course_project/models/catalog.dart';
import 'package:flutter_full_course_project/widgets/drawer.dart';
import 'package:flutter_full_course_project/widgets/item_widget.dart';


class HomePage extends StatelessWidget {
  final int days = 30;
  final String name = "Codepur";

  @override
  Widget build(BuildContext context) {
    final testlast = List.generate(20,((index) => catalogModel.items[0]));
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
            body: ListView.builder(
              itemCount: testlast.length,
              itemBuilder: (BuildContext context, int index) {
                return ItemWidget(item: testlast[index]);
              },
            ),
            drawer: MyDrawer()
          );
           
  }
}