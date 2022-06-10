import 'package:logger/logger.dart' show Logger, PrettyPrinter;

final log = Logger(
  printer: PrettyPrinter(
    noBoxingByDefault: true,
    printTime: true,
  ),
);
