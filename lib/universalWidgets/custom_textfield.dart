import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hint,
    required this.controller,
  });
  final String hint;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0),
      child: SizedBox(
        height: 35,
        child: TextField(
          controller: controller,
          decoration: InputDecoration(
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
              hintText: hint,
              hintStyle: const TextStyle(fontSize: 15, color: Colors.grey),
              filled: true,
              border: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.black),
                  borderRadius: BorderRadius.circular(10))),
        ),
      ),
    );
  }
}
