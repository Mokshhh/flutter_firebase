import 'package:flutter/material.dart';
import 'package:scratcher/scratcher.dart';

class ScratcherTile extends StatefulWidget {
  const ScratcherTile({super.key, required String title, required this.image});

  final String image;

  @override
  State<ScratcherTile> createState() => _ScratcherTileState();
}

class _ScratcherTileState extends State<ScratcherTile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Scratcher(
                image: Image.asset("lib/assets/Scratch_Card.png"),
                brushSize: 30,
                child: const SizedBox(
                    height: 200,
                    width: 200,
                    child: Center(
                      child: Text("Congratulations! You won ₹1"),
                    )),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(
                      context); // Navigate back to first route when tapped.
                },
                child: const Text('Go back!'),
              ),
            ]),
      ),
    );
  }
}
