import 'package:flutter/material.dart';

class PythonPage1 extends StatefulWidget {
  const PythonPage1({super.key});

  @override
  PythonPage1State createState() => PythonPage1State();
}

class PythonPage1State extends State<PythonPage1> {
  // Define controllers for DragTarget
  final List<String> dragData = ["", ""];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Chapter: Basics"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Header
            const Text(
              "Hello! Write your first program and print the words 'Hello world' using Python.",
              style: TextStyle(fontSize: 18),
            ),

            // DragTarget Row
            Row(
              children: [
                Expanded(
                  child: DragTarget<String>(
                    builder: (context, candidateData, rejectedData) {
                      return Container(
                        height: 100,
                        color: Colors.grey,
                        alignment: Alignment.center,
                        child: Text(dragData[0]),
                      );
                    },
                    onAccept: (data) {
                      setState(() {
                        dragData[0] = data;
                      });
                    },
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: DragTarget<String>(
                    builder: (context, candidateData, rejectedData) {
                      return Container(
                        height: 100,
                        color: Colors.grey,
                        alignment: Alignment.center,
                        child: Text(dragData[1]),
                      );
                    },
                    onAccept: (data) {
                      setState(() {
                        dragData[1] = data;
                      });
                    },
                  ),
                ),
              ],
            ),

            // Return Choice Row
            Row(
              children: [
                const Text("Return Choice:"),
                const Spacer(),
                ElevatedButton(
                  onPressed: () {
                    // Reset button functionality
                    setState(() {
                      dragData[0] = "";
                      dragData[1] = "";
                    });
                  },
                  child: const Text("Reset"),
                ),
              ],
            ),

            // Draggable Widgets
            Row(
              children: [
                Draggable<String>(
                  data: "hello",
                  feedback: Container(
                    height: 50,
                    width: 100,
                    color: Colors.blue.withOpacity(0.5),
                    alignment: Alignment.center,
                    child: const Text("hello"),
                  ),
                  childWhenDragging: const SizedBox(
                    height: 50,
                    width: 100,
                  ),
                  child: Container(
                    height: 50,
                    width: 100,
                    color: Colors.blue,
                    alignment: Alignment.center,
                    child: const Text("hello"),
                  ),
                ),
                const SizedBox(width: 16),
                Draggable<String>(
                  data: "world",
                  feedback: Container(
                    height: 50,
                    width: 100,
                    color: Colors.green.withOpacity(0.5),
                    alignment: Alignment.center,
                    child: const Text("world"),
                  ),
                  childWhenDragging: const SizedBox(
                    height: 50,
                    width: 100,
                  ),
                  child: Container(
                    height: 50,
                    width: 100,
                    color: Colors.green,
                    alignment: Alignment.center,
                    child: const Text("world"),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
