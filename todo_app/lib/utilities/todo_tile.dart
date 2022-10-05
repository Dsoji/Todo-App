import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TodoTile extends StatelessWidget {
  final String taskName;
  final bool taskCompleted;
  Function(bool?)? onChanged;

  // ignore: use_key_in_widget_constructors
  TodoTile({
    super.key,
    required this.taskName,
    required this.taskCompleted,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(25.0),
        child: Container(
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
              color: Colors.red, borderRadius: BorderRadius.circular(18)),
          child: Row(
            children: [
              //checkbox
              Checkbox(value: taskCompleted, onChanged: onChanged),
              //Task name
              const Text(
                'Make tutorial',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ));
  }
}
