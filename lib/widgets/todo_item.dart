import 'package:flutter/material.dart';
import 'package:tasker/common/colors.dart';
import 'package:tasker/models/todo.dart';

class TodoItem extends StatelessWidget {
  const TodoItem({Key? key, required this.todo, this.onTap}) : super(key: key);
  final Function()? onTap;
  final Todo todo;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap?.call();
      },
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Container(
              height: 28,
              width: 28,
              margin: const EdgeInsets.only(right: 16),
              decoration: todo.completed!
                  //FI:: fix duplication settings
                  ? BoxDecoration(
                      color: Pallete.blue,
                      borderRadius: BorderRadius.circular(28),
                      border: Border.all(
                        width: 2,
                        color: Pallete.blue,
                      ),
                    )
                  : BoxDecoration(
                      borderRadius: BorderRadius.circular(28),
                      border: Border.all(
                        width: 2,
                        color: Pallete.grey,
                      ),
                    ),
            ),
            // title
            Text(
              '${todo.title}',
              style: TextStyle(
                fontSize: 18,
                height: 1.2,
                letterSpacing: -0.2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
