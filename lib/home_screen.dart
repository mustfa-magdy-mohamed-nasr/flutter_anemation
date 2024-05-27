import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late final Animation<AlignmentGeometry> _yolotransetion;

  late final Animation<AlignmentGeometry> _redansetion;
  @override
  void initState() {
    _yolotransetion = Tween<AlignmentGeometry>(
            begin: Alignment.topCenter, end: Alignment.bottomCenter)
        .animate(parent);
    _redansetion = Tween<AlignmentGeometry>(
            begin: Alignment.centerLeft, end: Alignment.centerRight)
        .animate(parent);
    super.initState();
  }

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
    return Expanded(
        child: Stack(
      children: [
        AlignTransition(
          alignment: _yolotransetion,
          child: const CircleAvatar(
            backgroundColor: Colors.amber,
          ),
        ),
        AlignTransition(
          alignment: _redansetion,
          child: const CircleAvatar(
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
