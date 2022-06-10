import '../../../../db/db.dart' show db;
import '../../model/setting_model.dart' show AppConfig, GetAppConfigCollection;

AppConfig get appConfig => db.appConfigs.getSync(0) ?? AppConfig(id: 0);

