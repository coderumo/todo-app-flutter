import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class ToDoDatBase {
  List toDoList = [];
  //reference our box
  final _mybox = Hive.box('mybox');

  //run this method if this is 1st time ever opening this app
  void createInitialData() {
    toDoList = [
      ["make", false],
      ["do", false],
    ];
  }

  // load the data from database
  void loadData() {
    toDoList = _mybox.get("TODOLIST");
  }

  // update the database
  void updateDataBase() {
    _mybox.put("TODOLIST", toDoList);
  }
}
