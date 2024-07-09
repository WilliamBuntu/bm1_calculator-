// import 'package:bm1/input_page.dart';
import 'package:flutter/material.dart';
import 'constants.dart';

class ButtomButton extends StatelessWidget {
  const ButtomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pop(context);
        //     MaterialPageRoute(builder: (context) => const InputPage()));
      },
      child: Container(
        color: buttomContainerColor,
        margin: const EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: buttomContainerHeight,
        padding: const EdgeInsets.only(bottom: 15.0),
        child: const Center(
          child: Text('Re-Calculate', style: klargeButton),
        ),
      ),
    );
  }
}
