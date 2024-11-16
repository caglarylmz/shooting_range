import 'package:flutter/material.dart';
import 'package:shooting_range/common/components/texts/screen_headline.dart';
import 'package:shooting_range/utils/consts/sizes.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ScreenHeadLine(),
        const SizedBox(height: AppSizes.spaceBetweenItems),
      ],
    );
  }
}