import 'package:flutter/material.dart';

class AccountItem extends StatelessWidget {
  final String text;
  final IconData icon;

  const AccountItem({required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          print(text);
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(text,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
            Icon(icon),
          ],
        ));
  }
}
