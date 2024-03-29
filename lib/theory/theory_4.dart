import 'package:flutter/material.dart';
import 'package:pylearnplay/lessons/pythonpage5.dart'; // Import the next page file

class Theory4Page extends StatelessWidget {
  const Theory4Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Theory 4: Understanding String Data Type"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                "Understanding String Data Type",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue),
              ),
              const SizedBox(height: 20),
              const Text(
                "In Python, the `str` data type is used to represent strings, which are sequences of characters.",
                style: TextStyle(fontSize: 18, color: Colors.black87),
              ),
              const SizedBox(height: 20),
              const Text(
                "Examples of strings:",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue),
              ),
              const SizedBox(height: 20),
              const Text(
                "- 'Hello, World!'",
                style: TextStyle(fontSize: 18, color: Colors.black87),
              ),
              const Text(
                "- 'Python is fun'",
                style: TextStyle(fontSize: 18, color: Colors.black87),
              ),
              const Text(
                "- '' (empty string)",
                style: TextStyle(fontSize: 18, color: Colors.black87),
              ),
              const SizedBox(height: 20),
              const Text(
                "Operations on strings:",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue),
              ),
              const SizedBox(height: 20),
              const Text(
                "- Concatenation: 'Hello' + ' ' + 'World' = 'Hello World'",
                style: TextStyle(fontSize: 18, color: Colors.black87),
              ),
              const Text(
                "- Length: len('Python') = 6",
                style: TextStyle(fontSize: 18, color: Colors.black87),
              ),
              const SizedBox(height: 20),
              const Text(
                "Understanding the `str` data type is essential for working with text and manipulating strings in your Python programs.",
                style: TextStyle(fontSize: 18, color: Colors.black87),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Navigate to the next page
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const PythonPage5()),
                  );
                },
                child: const Text("Next Page"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
