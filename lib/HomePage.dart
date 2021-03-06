import 'package:flutter/material.dart';

import 'main.dart';

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
          //child: MyHomePage(title: 'Lovers'),
          child: HomePage(),
        ));
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child: ListView(
            children: [
              Container(
                padding: const EdgeInsets.fromLTRB(15.0, 75.0, 0.0, 0.0),
                child: const Text(
                  'Wedding',
                  style: TextStyle(fontSize: 70.0, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                child: const Text(
                  'Planner',
                  style: TextStyle(fontSize: 70.0, fontWeight: FontWeight.bold),
                ),
              ),
              // Container(
              //   padding: const EdgeInsets.fromLTRB(250.0, 0.0, 0.0, 0.0),
              //   child: const Text(
              //     '.',
              //     style: TextStyle(
              //         fontSize: 100.0,
              //         fontWeight: FontWeight.bold,
              //         color: Colors.green),
              //   ),
              // ),
              Container(
                color: Colors.transparent,
                child: GestureDetector(
                  onTap: () => goTasksPrincipal(),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 230, right: 10, left: 10),
                    child: Container(
                      height: 60.0,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.black,
                              style: BorderStyle.solid,
                              width: 1.0),
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(20.0)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Center(
                            child: ImageIcon(
                                AssetImage('assets/icons/facebook.png')),
                          ),
                          SizedBox(width: 30.0),
                          Center(
                            child: Text(
                              'Log in with Facebook',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Montserrat',
                                  fontSize: 16.0),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                color: Colors.transparent,
                child: GestureDetector(
                  onTap: () => goTasksPage(),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10, right: 10, left: 10),
                    child: Container(
                      height: 60.0,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.black,
                              style: BorderStyle.solid,
                              width: 1.0),
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(20.0)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Center(
                            child: ImageIcon(
                                AssetImage('assets/icons/google.png')),
                          ),
                          SizedBox(width: 30.0),
                          Center(
                            child: Text(
                              'Log in with Google',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Montserrat',
                                  fontSize: 16.0),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )),
        ],
      ),
    );
  }

  void goTasksPage() {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => const MyHomePage(title: 'Sparky')));
  }

  void goTasksPrincipal() {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => const MyHomePage(title: 'Sparky')));
  }
}
