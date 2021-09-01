import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_getx_demo/config/color_constants.dart';
import 'package:todo_getx_demo/controllers/todo_controller.dart';
import 'package:todo_getx_demo/views/widget/todolist_tile.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<TodoController>(
      init: TodoController(),
      builder: (controller) {
        return Scaffold(
            appBar: AppBar(
              backgroundColor: ColorConstants.appBarColor,
              title: Text(
                'Todo App List',
                style: TextStyle(
                  color: ColorConstants.primaryColor,
                ),
              ),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                controller.addTodo();
              },
              backgroundColor: ColorConstants.appBarColor,
              child: Icon(Icons.add),
            ),
            body: ListView.builder(
                itemCount: controller.todoItems.length,
                itemBuilder: (BuildContext context, int index) {
                  return TodoListTile(todoTitle: controller.todoItems[index]);
                }));
      },
    );
  }
}
