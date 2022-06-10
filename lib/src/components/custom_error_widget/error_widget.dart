import 'package:flutter/material.dart' show BuildContext, Center, Colors, Column, FontWeight, Key, MediaQuery, Scaffold, StatelessWidget, Text, TextAlign, TextStyle, Widget;
import 'package:flutter_svg/flutter_svg.dart' show SvgPicture;

import '../../configs/size_config.dart' show mainCenter, mainMin;

class KErrorWidget extends StatelessWidget {
  const KErrorWidget({
    Key? key,
    required this.error,
  }) : super(key: key);

  final Object error;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: mainCenter,
          mainAxisSize: mainMin,
          children: [
            SvgPicture.asset(
              'assets/svgs/error_404.svg',
              height: size.width * 0.35,
              width: size.width * 0.35,
            ),
            Text(
              'Error: $error',
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
