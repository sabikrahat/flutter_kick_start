import 'package:flutter/foundation.dart' show kReleaseMode;
import 'package:isar/isar.dart' show Isar;

import '../modules/setting/model/setting_model.dart' show AppConfigSchema;
import '../utils/paths/paths.dart' show appDBDir;

late final Isar db;

Future<void> openAppDB() async => db = await Isar.open(
      schemas: [AppConfigSchema],
      directory: appDBDir.path,
      inspector: !kReleaseMode,
    );
