import 'package:flutter/material.dart'
    show BuildContext, Key, MaterialApp, Widget;
import 'package:flutter_riverpod/flutter_riverpod.dart'
    show ConsumerWidget, WidgetRef;
import 'package:tailoring_app/src/configs/ip_configs.dart';

import 'localization/loalization.dart'
    show localizationsDelegates, onGenerateTitle, supportedLocales;
import 'modules/router/view/router.dart' show AppRouter;
import 'modules/setting/provider/theme/theme_provider.dart' show themeProvider;

class App extends ConsumerWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      restorationScopeId: appName,
      onGenerateTitle: onGenerateTitle,
      debugShowCheckedModeBanner: false,
      supportedLocales: supportedLocales,
      localizationsDelegates: localizationsDelegates,
      theme: ref.watch(themeProvider),
      home: AppRouter(),
    );
  }
}
