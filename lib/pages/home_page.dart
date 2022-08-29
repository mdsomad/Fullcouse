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
            body:(catalogModel.items!=null && catalogModel.items.isNotEmpty)? 
            GridView.builder
            (gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 16,
              crossAxisSpacing: 16
              ),
             itemBuilder: ((context, index) {
              final item = catalogModel.items[index];
               return Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                child: GridTile(
                  header: Container(child: Text(item.name,style: TextStyle(color: Colors.white),),
                  decoration:BoxDecoration(
                    color: Colors.purple
                  ),
                  ),
                  child: Image.network(item.image),
                  footer: Container(child: Text(item.price.toString(),style: TextStyle(color: Colors.white)),
                  decoration: BoxDecoration(
                    color:Colors.red
                     ),
                  
                  ),
                  )
                  );
                  
             }),
             
             itemCount: catalogModel.items.length,
             )
            :Center(child: CircularProgressIndicator(),),
            drawer: MyDrawer()
          );
           
  }
}