import 'package:club_frontend/theme/theme.dart';
import 'package:flutter/material.dart';

class RoundedSmallButton extends StatelessWidget {
  final VoidCallback onTap;
  final String label;
  final Color bgColor;
  final Color textColor;

  const RoundedSmallButton(
      {super.key,
      required this.onTap,
      required this.label,
      this.bgColor = Pallete.whiteColor,
      this.textColor = Pallete.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Chip(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(28),
          ),
        ),
        side: const BorderSide(
          width: 0,
        ),
        backgroundColor: bgColor,
        labelPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        label: Text(
          label,
          style: TextStyle(
            color: textColor,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
