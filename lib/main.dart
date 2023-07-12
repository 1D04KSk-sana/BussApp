import 'package:flutter/material.dart';
import 'start.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'バス停マップ',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const StartPage(),
    );
  }
}
