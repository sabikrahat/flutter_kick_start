import 'package:flutter/material.dart' show AppBar, BuildContext, Key, Scaffold, StatelessWidget, Widget;

import 'components/body.dart' show Body;

class Screen1 extends StatelessWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Body(),
    );
  }
}
