import 'package:flutter/material.dart';
import 'package:pylearnplay/theory/theory_1.dart';

class PythonPage1 extends StatefulWidget {
  const PythonPage1({Key? key}) : super(key: key);

  @override
  PythonPage1State createState() => PythonPage1State();
}

class PythonPage1State extends State<PythonPage1> {
  final List<String> dragData = ["", ""];
  bool isMascotVisible = false;

  @override
  Widget build(BuildContext context) {
    final isHelloWorldSuccessful =
        dragData[0] == "hello" && dragData[1] == "world";

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Chapter: Basics",
          style: TextStyle(
            color: Color(0xFFFFFFFF),
          ),
        ),
        backgroundColor: const Color(0xFF4285F4),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Instructions with playful mascot
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "🌟", // Updated playful mascot emoji
                    style: TextStyle(
                      fontSize: 40,
                    ),
                  ),
                  SizedBox(width: 10),
                  Flexible(
                    child: Text(
                      "Welcome to your first Python chapter!\n"
                      "You're about to print your first 'Hello World' in Python. "
                      "Drag and drop the words inside the brackets below to complete the code.",
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFF4285F4),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(
                    "🎉", // Celebration emoji
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.green,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 10),

              // Draggable text with light animations
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 10),

                  // Print statement
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

              // Reset button with playful icon
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton.icon(
                    onPressed: () {
                      setState(() {
                        dragData[0] = "";
                        dragData[1] = "";
                        isMascotVisible = false;
                      });
                    },
                    icon: const Icon(Icons.replay,
                        color: Colors.red), // Rewind symbol
                    label: const Text("Reset"),
                  ),
                ],
              ),

              const SizedBox(height: 20),

              // Draggable items
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildDraggable("hello", 0),
                  const SizedBox(width: 16),
                  _buildDraggable("world", 1),
                ],
              ),

              // Finish button with celebration animation
              if (isHelloWorldSuccessful)
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      isMascotVisible = true;
                    });

                    // Show congratulatory message
                    _showCongratulatoryMessage(context);

                    // Navigate to next screen
                    Future.delayed(const Duration(seconds: 2), () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Theory1()),
                      );
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF4285F4),
                  ),
                  child: const Text("Finish"),
                ),

              // Playful mascot visibility
              Visibility(
                visible: isMascotVisible,
                child: const Text(
                  "🥳", // Celebration emoji
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.green,
                  ),
                ),
              ),
            ],
          ),
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

  void _showCongratulatoryMessage(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text(
            "Congratulations!",
            style: TextStyle(
              color: Color(0xFF4285F4),
            ),
          ),
          content: const Text(
            "You've successfully printed 'Hello World' in Python!",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
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
