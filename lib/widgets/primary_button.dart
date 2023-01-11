import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton(
      {Key? key, required this.width, required this.onPressedBtn, required this.title})
      : super(key: key);
  final String title;
  final double width;
  final VoidCallback onPressedBtn;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xffB98068),
        ),
        onPressed: onPressedBtn,
        child:  Text(
          title,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
