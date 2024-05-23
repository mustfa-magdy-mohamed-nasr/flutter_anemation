import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("foo transion widget"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [_stskWiget(), _controlButton()],
        ),
      ),
    );
  }

  Widget _stskWiget() {
    Animation<double> scaleTransition =
        Tween<double>(begin: 1, end: 10).animate(parent);
Animation<AlignmentGeometry> animationalignm=
Tween<AlignmentGeometry>().animate(parent);
Animation<RelativeRect> animationposined= RelativeRectTween().animate();
    return Expanded(
        child: Stack(
      children: [
        ScaleTransition(scale: scaleTransition),

AlignTransition(alignment: animationalignm, child: child),

PositionedTransition(rect: animationposined, child: child),


        const Align(
          alignment: Alignment.topCenter,
          child: CircleAvatar(
            backgroundColor: Colors.amber,
          ),
        ),
        const Align(
          alignment: Alignment.centerLeft,
          child: CircleAvatar(
            backgroundColor: Colors.red,
          ),
        ),
      ],
    ));
  }

  Widget _controlButton() {
    return Wrap(
      children: [
        ElevatedButton(
          onPressed: () {},
          child: const Text('Forwad'),
        ),
        ElevatedButton(
          onPressed: () {},
          child: const Text('Stop'),
        ),
        ElevatedButton(
          onPressed: () {},
          child: const Text('Reverse'),
        ),
        ElevatedButton(
          onPressed: () {},
          child: const Text('Reset'),
        ),
        ElevatedButton(
          onPressed: () {},
          child: const Text('Repeat(rerers=false)'),
        ),
        ElevatedButton(
          onPressed: () {},
          child: const Text('Repeat(rerers=false)'),
        ),
      ],
    );
  }
}
