import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sparky',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(title: 'Tasks'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _ListView extends StatelessWidget {
  const _ListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Map items = {
      'task1': 'task1 desc',
      'task2': 'task2 desc',
      'task3': 'task3 desc',
      'task4': 'task4 desc',
      'task5': 'task5 desc',
      'task6': 'task6 desc',
      'task7': 'task7 desc',
      'task8': 'task8 desc',
      'task9': 'task9 desc',
      'task10': 'task10 desc',
      'task11': 'task11 desc',
      'task12': 'task12 desc',
      'task13': 'task13 desc',
    };

    return ListView.builder(
      padding: const EdgeInsets.all(4.0),
      itemCount: items.length,
      itemBuilder: (context, i) {
        String key = items.keys.elementAt(i);
        return Card(
          child: ListTile(
            title: Text(key),
            subtitle: Text(items[key].toString(),
                style: const TextStyle(
                    fontStyle: FontStyle.italic, color: Colors.pink)),
            leading: const Icon(Icons.control_point),
          ),
        );
      },
    );
  }
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text(widget.title)),
        ),
        body: const _ListView());
  }
}

Future deleteDialog(BuildContext context) {
  return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(true);
              },
              child: const Text('Yes'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(false);
              },
              child: const Text('No'),
            )
          ],
        );
      });
}