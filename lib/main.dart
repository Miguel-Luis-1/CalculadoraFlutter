import 'package:calc/pages/home_page.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MainApp());
}


class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData.dark(
        useMaterial3: true,
      ),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
      
    );
  }
}