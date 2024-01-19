import 'package:flutter/material.dart';

class PythonPage1 extends StatefulWidget {
  const PythonPage1({Key? key}) : super(key: key);

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
            // Introduction
            const Text(
              "Welcome to your first Python chapter!\n"
              "You're about to print your first 'Hello World' in Python. "
              "Drag and drop the words inside the brackets below to complete the code.",
              style: TextStyle(fontSize: 14),
            ),
            const SizedBox(height: 10),

            // Print Statement with White Boxes
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("print("),
                      _buildDragTarget(0),
                      const Text(", "),
                      _buildDragTarget(1),
                      const Text(")"),
                    ],
                  ),
                ],
              ),
            ),

            // Row for Return Choice and Reset Button
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Return Choice:"),
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

            const SizedBox(height: 10),

            // Draggable Widgets
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildDraggable("hello", 0),
                const SizedBox(width: 16),
                _buildDraggable("world", 1),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDragTarget(int index) {
    return Expanded(
      child: DragTarget<String>(
        builder: (context, candidateData, rejectedData) {
          return Container(
            height: 50,
            width: 80,
            color: Colors.white,
            alignment: Alignment.center,
            child: Text(
              dragData[index],
              style: const TextStyle(fontSize: 16, color: Colors.black),
            ),
          );
        },
        onAccept: (data) {
          setState(() {
            dragData[index] = data;
          });
        },
      ),
    );
  }

  Widget _buildDraggable(String data, int index) {
    return Draggable<String>(
      data: data,
      feedback: Container(
        height: 40,
        width: 60,
        color: Colors.white,
        alignment: Alignment.center,
        child: Text(
          data,
          style: const TextStyle(fontSize: 16, color: Colors.black),
        ),
      ),
      childWhenDragging: const SizedBox(
        height: 40,
        width: 60,
      ),
      child: Container(
        height: 40,
        width: 60,
        color: Colors.white,
        alignment: Alignment.center,
        child: Text(
          data,
          style: const TextStyle(fontSize: 16, color: Colors.black),
        ),
      ),
    );
  }
}
