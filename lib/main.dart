import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_chat_example/api/firebase_api.dart';
import 'package:firebase_chat_example/page/chats_page.dart';
import 'package:firebase_chat_example/users.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await FirebaseApi.addRandomUsers(Users.initUsers);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  static const String title = 'Firebase Chat';

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      home: const ChatsPage(),
    );
  }
}
