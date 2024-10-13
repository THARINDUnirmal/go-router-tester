import 'package:flutter/material.dart';

class UserScreen extends StatelessWidget {
  final String name;
  final String lastName;

  const UserScreen({
    super.key,
    required this.name,
    required this.lastName,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "My name is $name . and my last name is $lastName",
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
