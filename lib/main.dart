
import 'package:flutter/material.dart' show runApp;
import 'package:flutter_riverpod/flutter_riverpod.dart' show ProviderScope;

import 'src/app.dart' show App;
import 'src/configs/ip_configs.dart' show configIpsUrls;
import 'src/db/db.dart' show openAppDB;
import 'src/utils/paths/paths.dart' show initDir;

void main() async {
  await initDir();
  await openAppDB();
  await configIpsUrls();
  runApp(const ProviderScope(child: App()));
}
