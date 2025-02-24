import 'package:flutter/material.dart';

class PokmeonListTileButton extends StatelessWidget {
  const PokmeonListTileButton(
      {super.key,
      required this.icon,
      required this.label,
      required this.onPressed,
      this.backgroundColor,
      this.iconColor,
      this.foregroundColor});

  final Icon icon;
  final String label;
  final Function onPressed;
  final Color? backgroundColor;
  final Color? iconColor;
  final Color? foregroundColor;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextButton.icon(
        style: TextButton.styleFrom(
          textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          backgroundColor: backgroundColor,
          iconColor: iconColor,
          foregroundColor: foregroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        onPressed: () {
          onPressed();
        },
        icon: icon,
        label: Text(label),
      ),
    );
  }
}
