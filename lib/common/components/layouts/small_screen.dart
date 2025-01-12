import 'package:flutter/material.dart';
import 'package:shooting_range/utils/helpers/local_navigator.dart';

class SmallScreen extends StatelessWidget {
  const SmallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: localNavigator()),
    );
  }
}
