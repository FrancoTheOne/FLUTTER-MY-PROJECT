import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: GestureDetector(
        onTap: () => {debugPrint('hihi')},
        child: Container(
          color: Colors.amber,
          child: const Center(
            child: Text('Home'),
          ),
        ),
      ),
    );
  }
}
