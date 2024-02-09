import 'package:flutter/material.dart';
import 'package:todoapp/screens/authpage.dart';

class EntryPage extends StatefulWidget {
  @override
  State<EntryPage> createState() => _EntryPageState();
}

class _EntryPageState extends State<EntryPage> {
  @override

  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) =>const AuthPage()),
      );
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        padding: const EdgeInsets.all(10) ,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFECE9E6), Color(0xFFFFFFFF)],
            stops: [0, 1],
            begin: AlignmentDirectional(0.87, -1),
            end: AlignmentDirectional(-0.87, 1),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Container(
              width: 300,
              height: 300,
              child:Image.asset(
                'assets/images/todo.jpg',
                fit: BoxFit.fill,
              ),
            ),

            const SizedBox(height: 20.0),

            const Text(
              'ToDo',
              style: TextStyle(
                color: Colors.black,
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),

          ],
        ),
      ),
    );
  }
}