import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constants.dart';

class ReusableColumn extends StatelessWidget {
  ReusableColumn({required this.label, required this.icon});

  final String label;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 60.0,
        ),
        const SizedBox(
          height: 12,
        ),
        Text(
          label,
          style: labelTextStyle,
        ),
      ],
    );
  }
}
