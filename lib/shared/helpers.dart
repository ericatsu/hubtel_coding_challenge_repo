import 'package:intl/intl.dart';

DateTime parseDate(String date) {
  final DateFormat formatter = DateFormat('MMMM dd, yyyy');
  return formatter.parse(date);
}
