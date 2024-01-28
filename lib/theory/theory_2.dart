import 'package:flutter/material.dart';
import 'package:pylearnplay/lessons/pythonpage3.dart';

class Theory2 extends StatelessWidget {
  const Theory2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Variables - Theory"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                "Theory: Variables in Python",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue),
              ),
              const SizedBox(height: 20),
              const Text(
                "In Python, a variable is a named storage location used to store data. Think of it as a label attached to a value, allowing you to refer to the value by its name.",
                style: TextStyle(fontSize: 18, color: Colors.black87),
              ),
              const SizedBox(height: 20),
              const Text(
                "Here's how you can declare and use a variable:",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue),
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.all(20),
                color: Colors.grey[200],
                child: const Text(
                  "variable = 42\nprint(variable)",
                  style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'monospace',
                      color: Colors.black),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                "Explanation:",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue),
              ),
              const SizedBox(height: 20),
              const Text(
                "1. 'variable' is the name of the variable.",
                style: TextStyle(fontSize: 18, color: Colors.black87),
              ),
              const Text(
                "2. '=' is the assignment operator, used to assign a value to the variable.",
                style: TextStyle(fontSize: 18, color: Colors.black87),
              ),
              const Text(
                "3. '42' is the value assigned to the variable.",
                style: TextStyle(fontSize: 18, color: Colors.black87),
              ),
              const SizedBox(height: 20),
              const Text(
                "Running this program will output '42' to the console.",
                style: TextStyle(fontSize: 18, color: Colors.black87),
              ),
              ElevatedButton(
                onPressed: () {
                  // Navigate to PythonPage2
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const PythonPage3()),
                  );
                },
                child: const Text('Next Page: PythonPage2'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
