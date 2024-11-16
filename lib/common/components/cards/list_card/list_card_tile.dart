import 'package:flutter/material.dart';

class ListCardTile extends StatelessWidget {
  const ListCardTile(
      {super.key,
      required this.title,
      required this.subtitle,
      this.trailingIcon,
      this.tileShape,
      required this.onTap,
      this.titleStyle,
      this.subtitleStyle});

  final String title;
  final String subtitle;
  final Icon? trailingIcon;
  final ShapeBorder? tileShape;
  final VoidCallback onTap;
  final TextStyle? titleStyle;
  final TextStyle? subtitleStyle;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      shape: tileShape ??
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            side: const BorderSide(width: 1),
          ),
      title: Text(title, style: titleStyle),
      subtitle: Text(subtitle, style: subtitleStyle),
      trailing: trailingIcon ?? const Icon(Icons.keyboard_arrow_right),
    );
  }
}
