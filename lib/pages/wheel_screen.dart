import 'package:flutter/material.dart';
import 'package:flutter_fortune_wheel/flutter_fortune_wheel.dart';
import 'package:rxdart/rxdart.dart';
import 'package:trial/pages/Dare.dart';
import 'package:trial/pages/Truth.dart';
import 'dart:io';
import 'package:trial/pages/home_screen.dart';
import 'package:trial/pages/signup_screen.dart';

class WheelScreen extends StatefulWidget {
  const WheelScreen({super.key});

  @override
  State<WheelScreen> createState() => _WheelScreenState();
}

class _WheelScreenState extends State<WheelScreen> {
  final selected = BehaviorSubject<int>();
  int rewards = 0;
  List<int> items = [11,33,43,42,55,34,54,56,345,643,545,454];
//   void main() {
//   int? n = int.parse(stdin.readLineSync()!);
//   print("Value of n: $n and run time type: ${n.runtimeType} ");
//   List<int> items = [];
//   for (int i = 0; i < n; i++) {
//     items.insert(i, int.parse(stdin.readLineSync()!));
//   }
// }

  @override
  void dispose() {
    selected.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Game play")
          ),
          backgroundColor: Colors.amber,
          
          ),
          
      body: Center(
        child: Column(
          
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 300,
              child: FortuneWheel(
                selected: selected.stream,
                animateFirst: false,
                items: [
                  for (int i = 0; i < items.length; i++) ...<FortuneItem>{
                    FortuneItem(child: Text(items[i].toString()))
                  }
                ],
                onAnimationEnd: () {
                  setState(() {
                    rewards = items[selected.value];
                  });
                  print(rewards);
                  showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                              title: Text("Its your turn " +
                                  rewards.toString() +
                                  " Choose Truth or Dare"),
                              actions: [
                                ElevatedButton(
                                  child: const Text("Truth"),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const Truth()));
                                  },
                                ),
                                ElevatedButton(
                                  child: const Text("Dare"),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const Dare()));
                                  },
                                )
                              ]));

                  // ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  //     content: Text("You just won" + rewards.toString() + "Points!")));
                },
              ),
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  selected.add(Fortune.randomInt(0, items.length));
                });
              },
              child: Container(
                height: 40,
                width: 120,
                color: Colors.redAccent,
                child: Center(child: Text("Spin")),
              ),
            )
          ],
        ),
      ),
    );
  }
}

// void main() {
//   int? n = int.parse(stdin.readLineSync()!);
//   print("Value of n: $n and run time type: ${n.runtimeType} ");
//   List<int> list1 = [];
//   for (int i = 0; i < n; i++) {
//     list1.insert(i, int.parse(stdin.readLineSync()!));
//   }
// }
