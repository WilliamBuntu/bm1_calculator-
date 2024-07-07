import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';

class RowButton extends StatelessWidget {
 const  RowButton({super.key, required this.icon, this.onpress});
  final Widget icon;
  final void Function()? onpress;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onpress,
      elevation: 6.0,
      fillColor: const Color(0xFF4C4F5E),
      padding: const EdgeInsets.all(15.0),
      shape: const CircleBorder(),
      constraints: const BoxConstraints.tightFor(height: 50, width: 50),
      child: icon,
      
    );
  }
}
