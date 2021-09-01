import 'package:flutter/material.dart';
import 'package:todo_getx_demo/config/color_constants.dart';

class TodoListTile extends StatelessWidget {
  final String todoTitle;

  TodoListTile({required this.todoTitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      width: 200,
      height: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        gradient: LinearGradient(
          colors: Colors.primaries,
        ),
      ),
      child: ListTile(
        title: Text(todoTitle),
        subtitle: Text('This is my first todo'),
        trailing: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.delete_outline,
            color: ColorConstants.deleteIconColor,
          ),
        ),
      ),
    );
  }
}
