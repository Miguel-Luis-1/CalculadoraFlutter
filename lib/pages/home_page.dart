import 'package:calc/controllers/calc_controler.dart';
import 'package:calc/widgets/display.dart';
import 'package:flutter/material.dart';
import '../widgets/button_hub.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = CalcController();

  void _listener() {
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    controller.addListener(_listener);
  }

  @override
  void dispose() {
    controller.removeListener(_listener);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.blueGrey.shade900,
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: Display(value: controller.display),
          ),
          Expanded(
            flex: 3,
            child: ButtonHub(
              onButtonClick: controller.onButtonClick,
            ),
          ),
        ],
      ),
    );
  }
}