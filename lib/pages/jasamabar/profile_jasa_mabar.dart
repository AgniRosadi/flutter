import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MabarPage extends StatefulWidget {
  const MabarPage({super.key});

  @override
  State<MabarPage> createState() => _MabarPageState();
}

class _MabarPageState extends State<MabarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("hallo"),
      ),
    );
  }
}
