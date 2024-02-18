import 'package:flutter/material.dart';
import 'package:pylearnplay/theory/theory_3.dart';

class PythonPage3 extends StatefulWidget {
  const PythonPage3({Key? key}) : super(key: key);

  @override
  PythonPage3State createState() => PythonPage3State();
}

class PythonPage3State extends State<PythonPage3> {
  final List<String> dragData = [
    ""
  ]; // Only one element for the single blank box
  bool isSuccessful = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Data Type Guessing Game"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              "Guess the data type of the variable:\n"
              "variable = 42",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 10),

            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "variable = 42\n"
                        "data type = ",
                        style: TextStyle(fontSize: 18),
                      ),
                      _buildDragTarget(),
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
                      // Reset the options
                      dragData[0] = "";
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
                _buildDraggable("int"),
                _buildDraggable("float"),
                _buildDraggable("str"),
                _buildDraggable("bool"),
              ],
            ),

            // Congratulatory Message
            if (isSuccessful)
              ElevatedButton(
                onPressed: () {
                  // Show congratulatory message
                  _showCongratulatoryMessage(context);
                },
                child: const Text("Finish"),
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildDragTarget() {
    return Container(
      margin: const EdgeInsets.only(
          right: 60, top: 22), // Adjust left and top values to shift
      child: SizedBox(
        width: 60, // Adjust the width as needed
        child: DragTarget<String>(
          builder: (context, candidateData, rejectedData) {
            return Container(
              height: 30,
              color: const Color.fromARGB(255, 255, 255, 255),
              alignment: Alignment.center,
              child: Text(
                dragData[0],
                style: const TextStyle(fontSize: 18, color: Colors.black),
              ),
            );
          },
          onAccept: (data) {
            setState(() {
              dragData[0] = data;
              if (_isCorrect()) {
                isSuccessful = true;
              }
            });
          },
        ),
      ),
    );
  }

  Widget _buildDraggable(String data) {
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

  // Function to check if the user's guess is correct
  bool _isCorrect() {
    return dragData[0] == "int";
  }

  void _showCongratulatoryMessage(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Congratulations!"),
          content: const Text(
              "You've successfully guessed the data type of the variable!"),
          actions: [
            TextButton(
              onPressed: () {
                // Navigate to theory_3.dart
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Theory3Page()),
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
