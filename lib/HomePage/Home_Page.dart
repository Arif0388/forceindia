import 'package:flutter/material.dart';
import 'package:forceindia/Screens/dekstop_screen.dart';
import 'package:forceindia/Screens/mobile_screen.dart';
import 'package:forceindia/responsive_layout.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:ResponsiveLayout(mobileView:MobileScreen(),dekstopView:DesktopScreen()),
    );
  }
}
