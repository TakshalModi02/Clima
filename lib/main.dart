import 'package:clima/screens/loading_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Clima());
}

class Clima extends StatefulWidget {
  const Clima({Key? key}) : super(key: key);

  @override
  State<Clima> createState() => _ClimaState();
}

class _ClimaState extends State<Clima> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: LoadingScreen(),);
  }
}

