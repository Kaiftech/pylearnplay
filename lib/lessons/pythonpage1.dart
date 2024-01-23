import 'package:flutter/material.dart';
import 'package:pylearnplay/theory/theory_1.dart';

class PythonPage1 extends StatefulWidget {
  const PythonPage1({Key? key}) : super(key: key);

  @override
  PythonPage1State createState() => PythonPage1State();
}

class PythonPage1State extends State<PythonPage1> {
  final List<String> dragData = ["", ""];

  @override
  Widget build(BuildContext context) {
    bool isHelloWorldSuccessful =
        dragData[0] == "hello" && dragData[1] == "world";

    return Scaffold(
      appBar: AppBar(
        title: const Text("Chapter: Basics"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              "Welcome to your first Python chapter!\n"
              "You're about to print your first 'Hello World' in Python. "
              "Drag and drop the words inside the brackets below to complete the code.",
              style: TextStyle(fontSize: 14),
            ),
            const SizedBox(height: 5),

            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "print(",
                        style: TextStyle(fontSize: 18),
                      ),
                      _buildDragTarget(0),
                      const Text(", "),
                      _buildDragTarget(1),
                      const Text(
                        ")",
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Return Choice:"),
                const Spacer(),
                ElevatedButton(
                  onPressed: () {
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

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildDraggable("hello", 0),
                const SizedBox(width: 16),
                _buildDraggable("world", 1),
              ],
            ),

            // Congratulatory Message
            if (isHelloWorldSuccessful)
              ElevatedButton(
                onPressed: () {
                  // Show congratulatory message
                  _showCongratulatoryMessage(context);

                  // After showing message, navigate to Theory1 page
                  Future.delayed(const Duration(seconds: 2), () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Theory1()),
                    );
                  });
                },
                child: const Text("Finish"),
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
            height: 60,
            width: 100,
            color: Colors.white,
            alignment: Alignment.center,
            child: Text(
              dragData[index],
              style: const TextStyle(fontSize: 18, color: Colors.black),
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

  // Function to show congratulatory message
  void _showCongratulatoryMessage(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Congratulations!"),
          content: const Text(
              "You've successfully printed 'Hello World' in Python!"),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text("OK"),
            ),
          ],
        );
      },
    );
  }
}
