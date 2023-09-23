import 'package:flutter/material.dart';

void main() {
  runApp(ScoreApp());
}

class ScoreApp extends StatelessWidget {
  const ScoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "ScoreApp",
      home: ScoreHome(),
    );
  }
}

class ScoreHome extends StatefulWidget {
  const ScoreHome({super.key});

  @override
  State<ScoreHome> createState() => _ScoreHomeState();
}

class _ScoreHomeState extends State<ScoreHome> {
  int number = 0;
  void increaseNumber() {
    setState(() {
      number++;
    });
  }

  void decreaseNumber() {
    setState(() {
      number--;
    });
  }

  void resetNumber() {
    setState(() {
      number = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Score Changer"),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.restore_outlined),
        onPressed: resetNumber,
      ),
      body: Column(children: [
        SizedBox(
          height: 20,
        ),
        Center(
            child: Text("Score is ",
                style: TextStyle(
                    color: Colors.green,
                    fontSize: 25,
                    fontWeight: FontWeight.bold))),
        Center(
            child: Text(number.toString(),
                style: TextStyle(
                    color: Colors.green,
                    fontSize: 85,
                    fontWeight: FontWeight.bold))),
        SizedBox(
          height: 60,
        ),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          ElevatedButton(
            child: Text('Increase'),
            onPressed: increaseNumber,
          ),
          SizedBox(width: 15),
          ElevatedButton(
            child: Text('Decrease'),
            onPressed: decreaseNumber,
          ),
        ]),
      ]),
    );
  }
}
