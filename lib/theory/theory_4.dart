import 'package:flutter/material.dart';

class Theory4Page extends StatelessWidget {
  const Theory4Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Theory 4: Understanding String Data Type"),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                "Understanding String Data Type",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue),
              ),
              SizedBox(height: 20),
              Text(
                "In Python, the `str` data type is used to represent strings, which are sequences of characters.",
                style: TextStyle(fontSize: 18, color: Colors.black87),
              ),
              SizedBox(height: 20),
              Text(
                "Examples of strings:",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue),
              ),
              SizedBox(height: 20),
              Text(
                "- 'Hello, World!'",
                style: TextStyle(fontSize: 18, color: Colors.black87),
              ),
              Text(
                "- 'Python is fun'",
                style: TextStyle(fontSize: 18, color: Colors.black87),
              ),
              Text(
                "- '' (empty string)",
                style: TextStyle(fontSize: 18, color: Colors.black87),
              ),
              SizedBox(height: 20),
              Text(
                "Operations on strings:",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue),
              ),
              SizedBox(height: 20),
              Text(
                "- Concatenation: 'Hello' + ' ' + 'World' = 'Hello World'",
                style: TextStyle(fontSize: 18, color: Colors.black87),
              ),
              Text(
                "- Length: len('Python') = 6",
                style: TextStyle(fontSize: 18, color: Colors.black87),
              ),
              SizedBox(height: 20),
              Text(
                "Understanding the `str` data type is essential for working with text and manipulating strings in your Python programs.",
                style: TextStyle(fontSize: 18, color: Colors.black87),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
