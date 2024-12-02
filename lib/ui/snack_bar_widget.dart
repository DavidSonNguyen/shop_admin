import 'package:flutter/material.dart';

class SnackBarWidget extends StatelessWidget {
  final String message;
  final Color color;

  const SnackBarWidget._({
    Key? key,
    required this.message,
    required this.color,
  }) : super(key: key);

  factory SnackBarWidget.success(String message) {
    return SnackBarWidget._(
      message: message,
      color: Colors.green,
    );
  }

  factory SnackBarWidget.error(String message) {
    return SnackBarWidget._(
      message: message,
      color: Colors.red,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      padding: const EdgeInsets.all(8),
      child: Text(
        message,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}
