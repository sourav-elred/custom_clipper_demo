import 'package:flutter/material.dart';
import 'custom_clipper.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Custom Clipper Demo',
      home: InteractiveClipperExample(),
    );
  }
}

class InteractiveClipperExample extends StatefulWidget {
  const InteractiveClipperExample({super.key});

  @override
  InteractiveClipperExampleState createState() =>
      InteractiveClipperExampleState();
}

class InteractiveClipperExampleState extends State<InteractiveClipperExample> {
  bool _isClipped = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Interactive Clipper Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipPath(
              clipper: _isClipped ? MyCustomClipper() : null,
              child: Container(
                width: 300,
                height: 200,
                color: Colors.blue,
                child: const Center(
                  child: Text(
                    'Clipped Container',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _isClipped = !_isClipped;
                });
              },
              child: Text(_isClipped ? 'Remove Clip' : 'Apply Clip'),
            ),
          ],
        ),
      ),
    );
  }
}
