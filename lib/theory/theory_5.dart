import 'package:flutter/material.dart';
import 'package:pylearnplay/lessons/pythonpage6.dart';

class Theory5Page extends StatelessWidget {
  const Theory5Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Theory 6: Understanding Boolean Data Type"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                "Understanding Boolean Data Type",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue),
              ),
              const SizedBox(height: 20),
              const Text(
                "In Python, the `bool` data type is used to represent Boolean values. Boolean values can be either true or false.",
                style: TextStyle(fontSize: 18, color: Colors.black87),
              ),
              const SizedBox(height: 20),
              const Text(
                "Examples of Boolean values:",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue),
              ),
              const SizedBox(height: 20),
              const Text(
                "- true",
                style: TextStyle(fontSize: 18, color: Colors.black87),
              ),
              const Text(
                "- false",
                style: TextStyle(fontSize: 18, color: Colors.black87),
              ),
              const SizedBox(height: 20),
              const Text(
                "Boolean expressions are often used in decision-making and control flow statements.",
                style: TextStyle(fontSize: 18, color: Colors.black87),
              ),
              const SizedBox(height: 20),
              const Text(
                "Example of a Boolean expression:",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue),
              ),
              const SizedBox(height: 20),
              const Text(
                "- `age >= 18`",
                style: TextStyle(fontSize: 18, color: Colors.black87),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Navigate to PythonPage6
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const PythonPage6()),
                  );
                },
                child: const Text("Go to PythonPage6"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
