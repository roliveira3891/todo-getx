import 'package:get/get.dart';

class TodoController extends GetxController {
  List<String> todoItems = [];

  void addTodo() {
    int index = todoItems.length;
    todoItems.add('Item' + index.toString());
    update();
  }
}
