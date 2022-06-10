import 'package:flutter/material.dart' show AppBar, BuildContext, Center, ElevatedButton, Key, Scaffold, StatelessWidget, Text, Widget;
import 'package:flutter_riverpod/flutter_riverpod.dart' show Consumer;

import '../../../localization/loalization.dart' show t;
import '../../../utils/themes/themes.dart' show roundedButtonStyle;
import '../provider/config/app_config_db.dart' show appConfig;
import '../provider/theme/theme_db.dart' show changeTheme;
import '../provider/theme/theme_provider.dart' show themeProvider;

class SettingView extends StatelessWidget {
  const SettingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(t!.setting)),
      body: Center(
        child: Consumer(
          builder: (_, ref, __) {
            ref.watch(themeProvider);
            final theme = appConfig.themeIndex;
            return ElevatedButton(
              style: roundedButtonStyle,
              onPressed: () => changeTheme(theme == 0 ? 1 : 0),
              child: theme == 1
                  ? Text(t!.changeThemeToDark)
                  : Text(t!.changeThemeToLight),
            );
          },
        ),
      ),
    );
  }
}
