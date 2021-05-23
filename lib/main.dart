
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Long ListView",
    debugShowCheckedModeBanner: false,
    home: Scaffold(

      appBar: AppBar(title: Text("Welcome to Long ListView")),
      body: getListView(),

      floatingActionButton: FloatingActionButton
        (onPressed: (){},
        
        child: Icon(Icons.add),
        tooltip: "Please Upload File",
        ),
      
    ),
  ));
}


List<String> getListData(){
  var items = List<String>.generate(999, (count) => "When Your Age is : $count ""years" );
  return items;
  
}

Widget getListView(){
  var listItem = getListData();

  var listView = ListView.builder(
      itemBuilder: (context,index){
        return ListTile(
          title: Text(listItem[index]),
          leading: Icon(Icons.insert_comment,size: 30.00),
        );

      });
  return listView;

}

