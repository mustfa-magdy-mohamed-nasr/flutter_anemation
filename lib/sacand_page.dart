import 'package:flutter/material.dart';

class SacandPage extends StatelessWidget {
  const SacandPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          SizedBox(
            width: double.infinity,
            height: 300,
            child: Image.asset(
              'assets/images.png',
              fit: BoxFit.fill,
            ),
          ),
          Positioned(
            // top: ,
            bottom: -440, // Change from top to bottom
            left: 0,
            right: 0, // Add right to ensure width constraints
            child: TweenAnimationBuilder(
              tween: Tween<double>(end: 500, begin: 100),
              duration: const Duration(milliseconds: 500),
              child: const Wrap(
                children: [
                  Text("00000000000000"),
                  Text(
                      "000000000000000000000000000000000000000000000000000000000000000000000000000000000000"),
                  Text(
                      "000000000000000000000000000000000000000000000000000000000000000000000000000000000000"),
                  Text(
                      "000000000000000000000000000000000000000000000000000000000000000000000000000000000000"),
                  Text(
                      "000000000000000000000000000000000000000000000000000000000000000000000000000000000000"),
                  Text(
                      "000000000000000000000000000000000000000000000000000000000000000000000000000000000000"),
                  Text("00000000000000"),
                  Text("00000000000000"),
                  Text("00000000000000"),
                ],
              ),
              builder: (context, value, child) {
                return SizedBox(
                  width: MediaQuery.of(context).size.width, // Use screen width
                  child: Container(
                    height: value,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.cyanAccent,
                    ),
                    child: child,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
