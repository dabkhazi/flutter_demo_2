import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class HintLabel extends StatelessWidget {
  final String text;
  // ignore: use_key_in_widget_constructors
  const HintLabel(this.text);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(color: Colors.amber[200]),
      child: Padding(
        padding: const EdgeInsets.all(8.0), 
        child: Text(text, style: TextStyle(color: Colors.grey[700],)
    )));
  }
}

class CounterWidjet extends StatefulWidget { 
  const CounterWidjet({Key? key}) : super(key: key);  
  @override
  State<StatefulWidget> createState() => _CounterWidjetState();
}

class _CounterWidjetState extends State<CounterWidjet> {
  int _count = 42;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(8.0)),
        color: Colors.amber[600],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton(
            onPressed: _decrement, 
            icon: const Icon(Icons.remove)),
          Text('$_count', style: const TextStyle(fontSize: 20.0),),
          IconButton(
            onPressed: _increment, 
            icon: const Icon(Icons.add)),
        ],
      ),
    );
  }

  void _increment() {
    setState(() {
      _count++;
    });
  }

  void _decrement() {
    setState(() {
      _count--;
    });
  }

}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Counter',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: Scaffold(
        backgroundColor: Colors.amber[300],
        appBar: AppBar(
          title: const Text('Counter'),),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              HintLabel('tap - to increment'),
              SizedBox(height: 8.0,),
              CounterWidjet(),
              SizedBox(height: 8.0,),
              HintLabel('tap + to decrement')
            ]),  
          )),            
    );
  }
}
