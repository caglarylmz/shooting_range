import 'package:flutter/material.dart';
import 'package:shooting_range/utils/consts/sizes.dart';

import '../curved_card.dart';

class ListCard extends StatelessWidget {
  const ListCard({
    super.key,
    required this.width,
    required this.height,
    required this.listView,
    required this.title,
  });

  final double width;
  final double height;
  final ListView listView;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            title,
            style: Theme.of(context).textTheme.titleMedium,
            textAlign: TextAlign.center,
          ),
        ),

        CurvedCard(
          width: width,
          height: height,
          child: SingleChildScrollView(
            child: Column(
              children: [listView],
            ),
          ),
        ),
      ],
    );
  }
}
