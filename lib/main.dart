import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "MyApp",
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String myText = "Hello flutter";
  void _changedText() {
    setState(() {
      if (myText.startsWith('H')) {
        myText = "I'm Changed text";
      } else {
        myText = "Hello flutter";
      }
    });
  }

  Widget _bodyWidget() {
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              myText,
              style: const TextStyle(fontSize: 20.0),
            ),
            // RaisedButton(
            //   child: Text("Click me!!"),
            //   onPressed: _changedText,
            // ),
            ElevatedButton(
              onPressed: _changedText,
              child: const Text(
                "Click me!!",
                style: TextStyle(fontSize: 16.0),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
        brightness: Brightness.light,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Stateful Widget"),
        ),
        body: _bodyWidget(),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {},
        ),
      ),
    );
  }
}
