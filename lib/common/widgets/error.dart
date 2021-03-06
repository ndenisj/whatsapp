import 'package:flutter/material.dart';

class ErrorScreen extends StatelessWidget {
  ErrorScreen({Key? key, required this.error}) : super(key: key);

  final String error;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(error),
    );
  }
}
