import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_anemation/sacand_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double begin = 100;
  double end = 200;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 100,
            ),
            //_contanerWedget(),
            // const Spacer(),
            _button(),
            const SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }

  Widget _contanerWedget() {
    return TweenAnimationBuilder(
      tween: Tween<double>(begin: begin, end: end),
      duration: const Duration(seconds: 1),
      child: _colum(),
      builder: (context, value, child) {
        return Container(
          height: value,
          width: value,
          // padding: const EdgeInsets.all(0),
          decoration: _getBox(),
          child: child,
        );
      },
    );
  }

  BoxDecoration _getBox() {
    return BoxDecoration(
        borderRadius: BorderRadius.circular(16), color: Colors.amber);
  }

  Widget _button() {
    return ElevatedButton(
        onPressed: () {
          // begin = (begin == 100) ? 200 : 100;
          // end = (end == 200) ? 100 : 200;
          // setState(() {});
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const SacandPage()));
        },
        child: const Text("start anemation"));
  }

  Widget _colum() {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '1111111111',
          style: TextStyle(fontSize: 10),
        ),
        Text('22222222222'),
        Text('33333333333333'),
      ],
    );
  }
}
