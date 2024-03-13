import 'package:coding_test/core/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  const MainButton({super.key, required this.title, required this.onPressed});
  final String title;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
          shape: MaterialStatePropertyAll(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
          backgroundColor: const MaterialStatePropertyAll(
            Color(0xff9395D3),
          ),
          elevation: const MaterialStatePropertyAll(4)),
      child: SizedBox(
        width: 100,
        height: 65,
        child: Center(
          child: TextWidget(
            text: title,
            color: Colors.white,
            fontSize: 15,
          ),
        ),
      ),
    );
  }
}
