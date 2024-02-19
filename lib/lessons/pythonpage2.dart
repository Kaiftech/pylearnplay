import 'package:flutter/material.dart';
import 'package:pylearnplay/theory/theory_2.dart';

class PythonPage2 extends StatefulWidget {
  const PythonPage2({Key? key}) : super(key: key);

  @override
  PythonPage2State createState() => PythonPage2State();
}

class PythonPage2State extends State<PythonPage2> {
  final List<String?> dragData = [null, null];
  bool isSuccessful = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Chapter: Variables"),
        backgroundColor: const Color(0xFF4285F4), // Set the background color
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "🌟",
                  style: TextStyle(
                    fontSize: 40,
                  ),
                ),
                SizedBox(width: 10),
                Flexible(
                  child: Text(
                    "Welcome to the Python variables chapter!\n"
                    "Drag and drop the items to complete the code.",
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFF4285F4),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Text(
                  "🎉",
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.green,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 5),

            // Variable line above the print statement
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("variable = "),
                _buildDragTarget(0),
              ],
            ),

            const SizedBox(height: 10),

            // Print statement
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("print("),
                _buildDragTarget(1),
                const Text(")"),
              ],
            ),

            const Expanded(
              child: SizedBox(),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Return Choice:"),
                const Spacer(),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      dragData[0] = null;
                      dragData[1] = null;
                      isSuccessful = false;
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
                _buildDraggable("variable", 0),
                const SizedBox(width: 16),
                _buildDraggable("42", 1),
              ],
            ),

            ElevatedButton(
              onPressed: () {
                // Show congratulatory message
                _showCongratulatoryMessage(context);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF4285F4),
              ),
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
              dragData[index] ?? "",
              style: const TextStyle(fontSize: 18, color: Colors.black),
            ),
          );
        },
        onAccept: (data) {
          setState(() {
            dragData[index] = data;
            if (dragData[0] == "42" && dragData[1] == "variable") {
              isSuccessful = true;
            } else {
              isSuccessful = false;
            }
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
        width: 80,
        color: Colors.white,
        alignment: Alignment.center,
        child: Text(
          data,
          style: const TextStyle(fontSize: 16, color: Colors.black),
        ),
      ),
      childWhenDragging: const SizedBox(
        height: 40,
        width: 80,
      ),
      child: Container(
        height: 40,
        width: 80,
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
          title: const Text("Congratulations!"),
          content: const Text("You've successfully completed the code!"),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Theory2()),
                );
              },
              child: const Text("OK"),
            ),
          ],
        );
      },
    );
  }
}
