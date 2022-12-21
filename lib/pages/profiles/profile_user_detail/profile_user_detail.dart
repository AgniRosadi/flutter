import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ProfileUserDetail extends StatefulWidget {
  const ProfileUserDetail({super.key});

  @override
  State<ProfileUserDetail> createState() => _ProfileUserDetailState();
}

class _ProfileUserDetailState extends State<ProfileUserDetail> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "Ini Adalah Detail Profile User ",
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
        ),
      ),
    );
  }
}
