import 'package:flutter/material.dart' show BuildContext, Center, Key, StatelessWidget, Text, Widget;

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Hello World'),
    );
  }
}
