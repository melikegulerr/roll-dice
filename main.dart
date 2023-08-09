import 'package:flutter/material.dart';
import 'package:my_flutter_project/pages/gradient_container.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
        body: GradientContainer(
      Color.fromARGB(255, 32, 2, 85),
      Color.fromARGB(255, 160, 132, 207),
    )),
  ));
}
