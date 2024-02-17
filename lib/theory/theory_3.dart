import 'package:flutter/material.dart';
import 'package:pylearnplay/lessons/pythonpage4.dart'; // Import the next page file

class Theory3Page extends StatelessWidget {
  const Theory3Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Theory 3: Understanding Integer Data Type"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                "Understanding Integer Data Type",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue),
              ),
              const SizedBox(height: 20),
              const Text(
                "In Python, the `int` data type is used to represent integers, which are whole numbers without any decimal points.",
                style: TextStyle(fontSize: 18, color: Colors.black87),
              ),
              const SizedBox(height: 20),
              const Text(
                "Examples of integers:",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue),
              ),
              const SizedBox(height: 20),
              const Text(
                "- 42",
                style: TextStyle(fontSize: 18, color: Colors.black87),
              ),
              const Text(
                "- -10",
                style: TextStyle(fontSize: 18, color: Colors.black87),
              ),
              const Text(
                "- 0",
                style: TextStyle(fontSize: 18, color: Colors.black87),
              ),
              const SizedBox(height: 20),
              const Text(
                "Operations on integers:",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue),
              ),
              const SizedBox(height: 20),
              const Text(
                "- Addition: 5 + 3 = 8",
                style: TextStyle(fontSize: 18, color: Colors.black87),
              ),
              const Text(
                "- Subtraction: 10 - 7 = 3",
                style: TextStyle(fontSize: 18, color: Colors.black87),
              ),
              const Text(
                "- Multiplication: 4 * 2 = 8",
                style: TextStyle(fontSize: 18, color: Colors.black87),
              ),
              const Text(
                "- Division: 16 / 4 = 4",
                style: TextStyle(fontSize: 18, color: Colors.black87),
              ),
              const SizedBox(height: 20),
              const Text(
                "Understanding the `int` data type is crucial for working with whole numbers in your Python programs.",
                style: TextStyle(fontSize: 18, color: Colors.black87),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Navigate to the next page
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const PythonPage4()),
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
