import 'package:hive_flutter/hive_flutter.dart';

class ToDoDatabase {
  List toDoList = [];

  // Box reference
  final _myBox = Hive.box('myBox');

  // Load the data
  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  // update
  void updateDatabase() {
    _myBox.put("TODOLIST", toDoList);
  }
}