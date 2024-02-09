import 'package:flutter/material.dart';
import 'package:todoapp/screens/authpage.dart';
import 'package:todoapp/screens/homepage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
        apiKey: 'AIzaSyBBSGyl7OS_bPgMEqjeTEr460xtlZuIry8',
        appId: '1:449871622996:android:42f06cfe482cc7e3248ec1',
        messagingSenderId: '449871622996',
        projectId: 'fir-f4215'
    )
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  const AuthPage(),
    );
  }
}

