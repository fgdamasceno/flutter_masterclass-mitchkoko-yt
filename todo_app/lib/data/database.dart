import 'package:hive_flutter/hive_flutter.dart';

class ToDoDatabase {
  List toDoList = [];
  // reference our box
  final _myBox = Hive.box("myBox");

  // run this method if this is the 1st time ever opening this app
  void createInitialData() {
    toDoList = [
      ["This is an example of a task", false],
      ["Delete us and create your own tasks", true],
    ];
  }

  // load the data from database
  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  // update the database
  void updateDatabase() {
    _myBox.put("TODOLIST", toDoList);
  }
}
