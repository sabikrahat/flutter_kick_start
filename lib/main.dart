import 'package:flutter/material.dart'
    show
        BuildContext,
        Key,
        MaterialApp,
        StatelessWidget,
        Widget,
        WidgetsFlutterBinding,
        runApp;
import 'package:flutter/services.dart' show SystemChrome;
import 'package:flutter_easyloading/flutter_easyloading.dart' show EasyLoading;
import 'package:hive_flutter/hive_flutter.dart';
import 'package:provider/provider.dart' show MultiProvider, Provider;

import 'database/functions.dart' show HiveFuntions;
import 'helpers/themes/themes.dart' show uiConfig;
import 'providers/providers.dart' show providers;
import 'providers/theme/theme.dart' show ThemeProvider;
import 'screens/wrapper.dart' show Wrapper;

Future<void> main() async {
  await _init();
  runApp(
    MultiProvider(
      providers: providers,
      child: const Main(),
    ),
  );
}

Future<void> _init() async {
  await Hive.initFlutter();
  HiveFuntions.registerHiveAdepters();
  await HiveFuntions.openAllBoxes();
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(uiConfig);
}

class Main extends StatelessWidget {
  const Main({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _theme = Provider.of<ThemeProvider>(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: _theme.theme,
      home: Wrapper(),
      builder: EasyLoading.init(),
    );
  }
}
