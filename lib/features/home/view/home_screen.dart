import 'package:flutter/material.dart';
import 'package:shooting_range/common/components/texts/screen_headline.dart';
import 'package:shooting_range/features/home/view/large_view.dart';
import 'package:shooting_range/features/home/view/small_view.dart';
import 'package:shooting_range/utils/helpers/helper.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ScreenHeadLine(),
        Expanded(
          child: SingleChildScrollView(
            child: AppHelper.isLargeScreen(context)
                ? const LargeView()
                : const SmallView(),
          ),
        ),
      ],
    );
  }
}
