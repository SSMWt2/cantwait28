import 'package:intl/intl.dart';

class ItemModel {
  ItemModel({
    required this.id,
    required this.title,
    required this.urlImg,
    required this.releaseDate,
  });
  final String id;
  final String title;
  final String urlImg;
  final DateTime releaseDate;

  String dayLeft() {
    return releaseDate.difference(DateTime.now()).inDays.toString();
  }

  String releaseDateFormated() {
    return DateFormat.yMEd().format(releaseDate);
  }
}
