import 'package:flutter/material.dart';

class AddTaskPage extends StatelessWidget {
  AddTaskPage({super.key});

  final TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text('Add Task'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [

            TextField(
              controller: _textEditingController,
              decoration: const InputDecoration(
                labelText: 'Task',
              ),
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, _textEditingController.text);
              },
              child: const Text('Add'),
            ),
          ],
        ),
      ),
    );
  }
}