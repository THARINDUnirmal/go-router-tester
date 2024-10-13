import 'package:flutter/material.dart';

class UserScreen extends StatelessWidget {
  final String name;

  const UserScreen({
    super.key,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "My name is $name . and my age is 20!",
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
