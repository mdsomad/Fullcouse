// ignore_for_file: prefer_const_constructors
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_full_course_project/models/catalog.dart';
import 'package:flutter_full_course_project/widgets/drawer.dart';
import 'package:flutter_full_course_project/widgets/item_widget.dart';


class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final int days = 30;

  final String name = "Codepur";

  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData()async{
  await Future.delayed(Duration(seconds: 2));
   final catalogJson = await rootBundle.loadString("assets/file/catalog.json");
   final DecodedData = jsonDecode(catalogJson);
   var produedData = DecodedData["products"];
   catalogModel.items = List.from(produedData).map<Item>((item) =>Item.fromMap(item)).cast<Item>().toList();
      setState(() {
        
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
            body:(catalogModel.items!=null && catalogModel.items.isNotEmpty)? ListView.builder(
              itemCount: catalogModel.items.length,
              itemBuilder: (BuildContext context, int index) {
                return ItemWidget(item: catalogModel.items[index]);
              },
            ):Center(child: CircularProgressIndicator(),),
            drawer: MyDrawer()
          );
           
  }
}