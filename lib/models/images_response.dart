import 'package:wallpaper_app/models/image.dart';

class ImagesResponse {
  int _total;
  int _totalHits;
  List<Image> _images;

  ImagesResponse.fromJson(Map<String, dynamic> parsedJson) {
    _total = parsedJson['total'];
    _totalHits = parsedJson['totalHits'];
    _images = Image.fromJsonList(parsedJson['hits']);
  }

  List<Image> get images => _images;

  int get totalHits => _totalHits;

  int get total => _total;
}