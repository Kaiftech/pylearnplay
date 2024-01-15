import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class PythonPage1 extends StatefulWidget {
  const PythonPage1({Key? key}) : super(key: key);

  @override
  State<PythonPage1> createState() => _PythonPage1State();
}

class _PythonPage1State extends State<PythonPage1> {
  final List<String> draggableTexts = ['World', 'Hello'];
  List<String?> droppedTexts = [null, null];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'CHAPTER: BASICS',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Text('Say Hello!'),
                  SizedBox(height: 10),
                  Text('Write your first program and print the words'),
                  Text("'Hello World' using Python."),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('print("'),
                Container(
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                  ),
                  // Adding semantics to make purpose clear to screen readers
                  child: Semantics(
                    label: droppedTexts[0] ?? '',
                    child: Text(droppedTexts[0] ?? ''),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                  ),
                  // Adding semantics to make purpose clear to screen readers
                  child: Semantics(
                    label: droppedTexts[1] ?? '',
                    child: Text(droppedTexts[1] ?? ''),
                  ),
                ),
                const Text('")'),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Choices:'),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        droppedTexts = [null, null];
                      });
                    },
                    child: const Text('RESET'),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                padding: const EdgeInsets.all(20.0),
                children: draggableTexts
                    .map(
                      (text) => Draggable<String>(
                        data: text,
                        feedback: Container(
                          padding: const EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.blue),
                          ),
                          child: Text(text),
                        ),
                        childWhenDragging: const SizedBox(
                          height: 30,
                          width: 50,
                        ),
                        child: DragTarget<String>(
                          builder: (context, candidateData, rejectedData) =>
                              Container(
                            padding: const EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                            ),
                            child: Text(
                              text,
                              // Adding semantics to make purpose clear to screen readers
                              semanticsLabel: 'draggableText$text',
                            ),
                          ),
                          onAccept: (data) {
                            setState(() {
                              droppedTexts[droppedTexts.indexOf(null)] = data;
                              // Announcing the drop to screen readers
                              final announcement = 'Dragged $data';
                              SemanticsService.announce(
                                  announcement, TextDirection.ltr);
                              // You can also use a SnackBar for visual feedback
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(announcement),
                                ),
                              );
                            });
                          },
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
