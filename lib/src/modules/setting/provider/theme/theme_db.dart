import '../../../../db/db.dart' show db;
import '../../model/setting_model.dart' show GetAppConfigCollection;
import '../config/app_config_db.dart' show appConfig;


void changeTheme(int index) => db.writeTxnSync(
      (isar) => isar.appConfigs.putSync(appConfig.copyWith(themeIndex: index)),
    );
