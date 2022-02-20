import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: Example(),
    );
  }
}

class Example extends StatefulWidget {
  const Example({Key? key}) : super(key: key);

  @override
  State<Example> createState() => _ExampleState();
}

class _ExampleState extends State<Example> {
  bool change = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        // TODO 1: Insert code: that show MESSAGE based state of 'change"
        Expanded(child: change ? _buildWorld() : _buildFlutter()),
        //TODO 2: When User pass tap screen, triger state of 'chagne' variable
        GestureDetector(
          onTap : () => setState( () => change = !change ),
          child : const Text ('Click Here to Change State'),
        ),
      ],
    );
  }

  Widget _buildWorld() {
    return Row(
      children: <Widget>[Text('Hello World')],
    );
  }

  Widget _buildFlutter() {
    return Row(
      children: <Widget>[Text('Hello Flutter')],
    );
  }
}