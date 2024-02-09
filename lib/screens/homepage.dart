import 'package:flutter/material.dart';
import 'package:todoapp/Auth/authservice.dart';
import 'package:todoapp/screens/addtaskpage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<String> _tasks = [];

  void _addTask(String task) {
    setState(() {
      _tasks.add(task);
    });
  }

  void _removeTask(int index) {
    setState(() {
      _tasks.removeAt(index);
    });
  }

  void _logout() async {
    await AuthService().signOut();
    Navigator.pushReplacementNamed(context, '/auth');
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: const Text("Todo"),
        actions: [
          IconButton(
            icon: Icon(Icons.logout,color: Colors.black,),
            onPressed: _logout,
          ),
        ],
      ),



      body: ListView.builder(
        itemCount: _tasks.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(_tasks[index]),
            trailing: IconButton(
              icon: Icon(Icons.delete),
              onPressed: () {
                _removeTask(index);
              },
            ),
          );
        },
      ),

      
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final newTask = await Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddTaskPage()),
          );
          if (newTask != null) {
            _addTask(newTask);
          }
        },
        tooltip: 'Add Task',
        child: Icon(Icons.add),
      ),
    );
  }
}
