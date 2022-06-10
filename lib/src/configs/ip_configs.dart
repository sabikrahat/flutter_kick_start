// flutter pub run rename --bundleId com.abcd.appname
// flutter pub run rename --appname "App Name"
// Change these

import 'dart:io' show NetworkInterface;

import '../utils/helpers/logger/logger_helper.dart' show log;



const appName = 'Tailoring_App';

// const baseUrl = 'http://192.168.50.29:8080';

late final String baseUrl;

Future configIpsUrls() async {
  for (var interface in await NetworkInterface.list()) {
    for (var addr in interface.addresses) {
      log.i('URL: http://${addr.address}:8080');
      baseUrl = 'http://${addr.address}:8080';
      return;
    }
  }
}
