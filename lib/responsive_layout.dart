import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({super.key, required this.mobileView, required this.dekstopView});
  final Widget  mobileView;
  final Widget  dekstopView;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder:(context, constraints) {
          if(constraints.maxWidth<600){
            return mobileView;
          }else{
            return dekstopView;
          }
        },
    );
  }
}
