import 'package:aaji_care/AuthPages/signIn.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
Future main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: SignIn(),
      debugShowCheckedModeBanner: false,
    );
  }
}