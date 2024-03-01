import 'package:flutter/material.dart';

class Input extends StatelessWidget {
  final String label;
  final TextEditingController controller;
  final bool obscureText;
  final TextInputType keyboardType;
  final String? Function(String?)? validator;
  final Widget? suffixIcon;

  const Input({
    Key? key,
    required this.label,
    required this.controller,
    this.obscureText = false,
    this.keyboardType = TextInputType.text,
    this.validator,
    this.suffixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          textAlign: TextAlign.left,
          style: TextStyle(fontSize: 14, color: Colors.black54),
        ),
        const SizedBox(height: 8.0),
        TextFormField(
          validator: validator,
          controller: TextEditingController(),
          decoration: InputDecoration(
              suffixIcon: suffixIcon,
              border: OutlineInputBorder(),
              hintText: label,
              contentPadding: EdgeInsets.symmetric(horizontal: 16),
              constraints: BoxConstraints(minHeight: 48)),
          obscureText: obscureText,
        )
      ],
    );
  }
}
