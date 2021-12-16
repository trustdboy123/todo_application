import 'package:flutter/material.dart';
import 'package:todo_app/utiles.dart';
import 'package:todo_app/models/todo.dart';



class TodoTileView extends StatelessWidget {
  const TodoTileView({
    Key? key,
     required this. todo,
  }) : super(key: key,) ;
  final Datum todo;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Icon(
              Icons.check_circle_outline,
              color: dateColor(todo.dateTime),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Plan a trip to Finland',
                    style: TextStyle(
                        fontWeight: FontWeight.w600, color: customBlue),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    todo.description, 
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(color: Colors.grey, fontSize: 16),
                  )
                ],
              ),
            ),
            const SizedBox(
              width: 25,
            ),
            Row(
              children: [
                Icon(
                  Icons.notifications,
                  color: dateColor(todo.dateTime),
                ),
                Text(
                  todo.dateTime,
                  style: TextStyle(color: dateColor(todo.dateTime)),
                )
              ],
            )
          ],
        ),
      ),
    );
  }}