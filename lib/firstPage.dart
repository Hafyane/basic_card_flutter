import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

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
        return SizedBox(
          width: 150,
          height: 150,
          child: Card(
            color: Colors.white60,
            child: ListTile(
              title: Text(key),
              subtitle: Text(items[key].toString(),
                  style: const TextStyle(
                      fontStyle: FontStyle.italic, color: Colors.pink)),
              leading: const Icon(Icons.control_point),
            ),
          ),
        );
      },
    );
  }
}