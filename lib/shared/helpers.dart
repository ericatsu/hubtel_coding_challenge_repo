import 'package:intl/intl.dart';

DateTime parseDate(String date) {
  final DateFormat formatter = DateFormat('MMMM dd, yyyy');
  return formatter.parse(date);
}

String formatDate(DateTime date) {
  return DateFormat('MMMM dd, yyyy').format(date);
}
