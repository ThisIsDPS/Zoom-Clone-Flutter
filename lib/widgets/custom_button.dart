import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.text, required this.onPressed,});

  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 10, 107, 234),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.elliptical(15, 8),
          ),
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 80,
          vertical: 10,
        ),
      ),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 16,
        ),
      ),
    );
  }
}
