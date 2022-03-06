import 'package:flutter/material.dart';

import './inviteMemberPage.dart' as invite_member_page;
import './tasksPage.dart' as tasks_page;

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
          tasks_page.TasksPage(),
          invite_member_page.InviteMemberPage(),
        ]));
  }
}
