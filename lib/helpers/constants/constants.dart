import 'package:flutter/material.dart' show Color, Colors;
import 'package:http/http.dart' show MultipartRequest;
import 'package:intl/intl.dart' show DateFormat, NumberFormat;

Color white = Colors.white;
Color black = Colors.black;

Color kLightPrimaryColor = Colors.blue.shade900.withOpacity(0.85);

DateFormat dateFormat = DateFormat('dd-MM-yy');
DateFormat timeFormat = DateFormat('hh:mm:ss a');
NumberFormat numberFormat = NumberFormat('#,##,000.0#');

DateTime get getCurrentDateTime => DateTime.now();
String get getCurrentFormattedDate => dateFormat.format(DateTime.now());
String get getCurrentFormattedTime => timeFormat.format(DateTime.now());

//WebView User Agent
const String webViewUserAgent =
    'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.192 Safari/537.36';

final RegExp emailValidatorRegExp =
    RegExp(r'^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+');
final RegExp phoneValidatorRegExp =
    RegExp(r'^([0-9]{9})|([A-Za-z0-9._%\+\-]+@[a-z0-9.\-]+\.[a-z]{2,3})$');
final RegExp stringIsUrlRegExp = RegExp(
    r'^((?:.|\n)*?)((http:\/\/www\.|https:\/\/www\.|http:\/\/|https:\/\/)?[a-z0-9]+([\-\.]{1}[a-z0-9]+)([-A-Z0-9.]+)(/[-A-Z0-9+&@#/%=~_|!:,.;]*)?(\?[A-Z0-9+&@#/%=~_|!:‌​,.;]*)?)');

//SignUp Form Error
const String kEmailNullError = 'Please Enter your email';
const String kInvalidEmailError = 'Please Enter Valid Email';
const String kPassNullError = 'Please Enter your password';
const String kShortPassError = 'Password is too short';
const String kMatchPassError = "Passwords don't match";
const String kInvaliedInfoError = 'Email or Password Invalied';
const String kFirstNameNullError = 'Please Enter your first name';
const String kLastNameNullError = 'Please Enter your last name';
const String kPhoneNumberNullError = 'Please Enter your phone number';
const String kInvaliedPhoneNumberError = 'Please Enter valid phone number';
const String kAddressNullError = 'Please Enter your address';
const String kCountryNullError = 'Please Select your Country';
const String kStateNullError = 'Please Select your State';

const String baseLink = '';

const String playStoreUrl = 'https://play.google.com/store/apps/details?id= ';

const Map<String, String> headerNoAuth = {'Accept': 'application/json'};

Map<String, String> headers = {
  'Accept': 'application/json',
  'Authorization': 'Bearer ...',
};

MultipartRequest postURL(String trail) =>
    MultipartRequest('POST', Uri.parse(baseLink + trail));

MultipartRequest getURL(String trail) =>
    MultipartRequest('GET', Uri.parse(baseLink + trail));

String numberFormateConvert(double? currency) =>
    currency != null ? numberFormat.format(currency) : '';
