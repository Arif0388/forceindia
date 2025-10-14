import 'package:flutter/material.dart';
import 'package:forceindia/Widget/force_header.dart';
import 'package:forceindia/Widget/force_home_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child: Column(
          children: [
            ForceHeader(),
            ForceHomeSection(),
          ],
        ),
      ),
    );
  }
}
