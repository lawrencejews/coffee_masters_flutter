import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// class HelloWorld extends StatelessWidget {
//   const HelloWorld({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return const Text("HelloWorld");
//   }
// }

class Greet extends StatefulWidget {
  const Greet({Key? key}) : super(key: key);

  @override
  State<Greet> createState() => _GreetState();
}

// Private class widget
class _GreetState extends State<Greet> {
  // State variable
  var name = "";

  @override
  Widget build(BuildContext context) {
    
    var greetStyle = const TextStyle(fontSize: 24);

    return Column(
      children: [
        Row(
          children: [
            Text(
              "Hello $name",
              style: greetStyle,
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(24.0),
          child: TextField(
              onChanged: (value) => setState(() {
                    name = value;
                  })),
        ),
      ],
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

// HomePage Widgets
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Greet(),
    );
  }
}
