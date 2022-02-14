import 'package:flutter/material.dart';
import './firstPage.dart' as first_page;
import './secondPage.dart' as second_page;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        title: 'Lovers',
        home: Center(
          child: MyHomePage(title: 'Lovers'),
        )

    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late TabController myController;

  @override
  void initState() {
    super.initState();
    myController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text(widget.title)),
          backgroundColor: Colors.teal,
          bottom: TabBar(
            controller: myController,
            tabs: const [
              Tab(icon: Icon(Icons.checklist), text: 'Taches'),
              Tab(icon: Icon(Icons.share), text: 'invités'),
            ],
          ),
        ),
        body: TabBarView(controller: myController, children: const [
          first_page.FirstPage(),
          second_page.SecondPage(),
        ]));
  }
}
