import 'package:flutter/material.dart' show AnimatedBuilder, Animation, AnimationController, BuildContext, Center, Column, FontWeight, Image, Key, MediaQuery, Scaffold, SingleTickerProviderStateMixin, SizedBox, State, StatefulWidget, Text, TextStyle, Transform, Tween, Widget;
import 'dart:math' show pi;
import '../../localization/loalization.dart' show t;

import '../../configs/size_config.dart' show mainMin;

class LoadingWidget extends StatefulWidget {
  const LoadingWidget({Key? key}) : super(key: key);

  @override
  State<LoadingWidget> createState() => _LoadingWidgetState();
}

class _LoadingWidgetState extends State<LoadingWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animation;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat();
    //
    animation = Tween<double>(begin: 0, end: 2 * pi).animate(controller);
    //
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: mainMin,
          children: [
            AnimatedBuilder(
              animation: animation,
              child: Image.asset(
                'assets/icons/flutter_logo.png',
                height: size.width * 0.035 < 50 ? 50 : size.width * 0.035,
                width: size.width * 0.035 < 50 ? 50 : size.width * 0.035,
              ),
              builder: (context, child) {
                return Transform.rotate(
                  angle: animation.value,
                  child: child,
                );
              },
            ),
            SizedBox(height: size.width * 0.005 < 7 ? 7 : size.width * 0.005),
            Text(
              t!.loading,
              style: TextStyle(
                fontSize: size.width * 0.011 < 13 ? 13 : size.width * 0.011,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
