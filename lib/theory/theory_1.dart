import 'package:flutter/material.dart';

class Theory1 extends StatelessWidget {
  const Theory1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hello World - Theory"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                "Theory: Hello World in Python",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.blue),
              ),
              const SizedBox(height: 20),
              const Text(
                "In programming, the 'Hello World' program is a simple program that outputs or displays the message 'Hello, World!' on the screen. It is often used as a beginner's first program to illustrate the basic syntax and structure of a programming language.",
                style: TextStyle(fontSize: 18, color: Colors.black87),
              ),
              const SizedBox(height: 20),
              const Text(
                "Here's a basic 'Hello World' program in Python:",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blue),
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.all(20),
                color: Colors.grey[200],
                child: const Text(
                  "print('Hello, World!')",
                  style: TextStyle(fontSize: 20, fontFamily: 'monospace', color: Colors.black),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                "Explanation:",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blue),
              ),
              const SizedBox(height: 20),
              const Text(
                "1. 'print' is a built-in function in Python used to display messages on the console.",
                style: TextStyle(fontSize: 18, color: Colors.black87),
              ),
              const Text(
                "2. The text 'Hello, World!' is enclosed in single quotes (') and is known as a string.",
                style: TextStyle(fontSize: 18, color: Colors.black87),
              ),
              const Text(
                "3. The entire statement is enclosed in parentheses, indicating the argument passed to the 'print' function.",
                style: TextStyle(fontSize: 18, color: Colors.black87),
              ),
              const SizedBox(height: 20),
              const Text(
                "Running this program will output 'Hello, World!' to the console.",
                style: TextStyle(fontSize: 18, color: Colors.black87),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
