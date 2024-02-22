import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';

// Format Date Output : Jan 1, 2022
String formatDateMMMdyyyy(String dateStr) {
  DateTime date = DateTime.parse(dateStr);
  String formattedDate = DateFormat("MMM d, yyyy").format(date);
  return formattedDate;
}

// Format Date into Indonesian Output : Sabtu, 01 Januari 2022
String formatDateEEEEddMMyyyy(String dateStr) {
  initializeDateFormatting('id_ID', null);
  DateTime date = DateTime.parse(dateStr);
  String formattedDate = DateFormat("EEEE, dd MMMM yyyy", 'id_ID').format(date);
  return formattedDate;
}

// Format Date into Indonesian Output : 01 Jan 2022
String formatDateddMMMMyyyy(String dateStr) {
  initializeDateFormatting('id_ID', null);
  DateTime date = DateTime.parse(dateStr);
  String formattedDate = DateFormat("dd MMM yyyy", 'id_ID').format(date);
  return formattedDate;
}

// Format Date Output : 01
String formatDatedd(String dateStr) {
  DateTime date = DateFormat("dd-MM-yyyy").parse(dateStr);
  String formattedDate = DateFormat("dd").format(date);
  return formattedDate;
}

// Format Date Output : Jan
String formatDateMMM(String dateStr) {
  DateTime date = DateFormat("dd-MM-yyyy").parse(dateStr);
  String formattedDate = DateFormat("MMM").format(date);
  return formattedDate;
}

// Format Date Output : 01 Jan
String formatDateddMMM(String dateStr) {
  DateTime date = DateFormat("dd-MM-yyyy").parse(dateStr);
  String formattedDate = DateFormat("dd MMM").format(date);
  return formattedDate;
}

// Format Date Output : 01 Jan 2022
String formatDateddMMMyyyy(String dateStr) {
  DateTime date = DateFormat("dd-MM-yyyy").parse(dateStr);
  String formattedDate = DateFormat("dd MMM yyyy").format(date);
  return formattedDate;
}

// Format Date Output : 2 jam lalu (Ouput bergantung pada inputan)
String convertToRelativeTime(String dateString) {
  DateTime now = DateTime.now();
  DateTime date = DateTime.parse(dateString);
  Duration difference = now.difference(date);
  if (difference.inSeconds < 20) {
    return "Baru saja di post";
  } else if (difference.inSeconds < 60) {
    return "${difference.inSeconds} detik lalu";
  } else if (difference.inMinutes < 60) {
    return "${difference.inMinutes} menit lalu";
  } else if (difference.inHours < 24) {
    return "${difference.inHours} jam lalu";
  } else if (difference.inDays < 365) {
    return "${difference.inDays} hari lalu";
  } else {
    int years = difference.inDays ~/ 365;
    return "$years tahun yang lalu";
  }
}
