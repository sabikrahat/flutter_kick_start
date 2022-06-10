import 'package:intl/intl.dart' show DateFormat, NumberFormat;

String get todayNow => DateFormat('MMMM d, y  hh:mm a').format(DateTime.now());

DateFormat dateFormat = DateFormat('dd-MM-yy');
DateFormat timeFormat = DateFormat('hh:mm:ss a');
NumberFormat numberFormat = NumberFormat('#,##,000.0#');

String numberFormateConvert(double? currency) =>
    currency != null ? numberFormat.format(currency) : '';
