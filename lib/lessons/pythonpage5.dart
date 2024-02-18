import 'package:flutter/material.dart';
import 'package:pylearnplay/theory/theory_5.dart';

class PythonPage5 extends StatefulWidget {
  const PythonPage5({Key? key}) : super(key: key);

  @override
  PythonPage5State createState() => PythonPage5State();
}

class PythonPage5State extends State<PythonPage5> {
  final List<String> dragData = [""];
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
              "variable = True",
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
                        "variable = True\n"
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
    return SizedBox(
      width: 80, // Adjust the width as needed
      child: DragTarget<String>(
        builder: (context, candidateData, rejectedData) {
          return Container(
            height: 60,
            color: Colors.white,
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
    return dragData[0] == "bool";
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
                // Navigate to theory_5.dart
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Theory5Page()),
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
