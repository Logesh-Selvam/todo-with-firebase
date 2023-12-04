import 'package:flutter/material.dart';
// import 'package:todo_list/login_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:hive_flutter/adapters.dart';
import 'auth_page.dart';
import 'firebase_options.dart';

void main() async {
  // init the hive

  await Hive.initFlutter();

  // open a box

  var box = await Hive.openBox('mybox');

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AuthPage(),
    );
  }
}
