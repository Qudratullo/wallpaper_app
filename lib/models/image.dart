class Image {
  String _previewURL;
  String _webFormatURL;
  String _largeImageURL;

  Image.fromJson(Map<String, dynamic> parsedJson) {
    _previewURL = parsedJson['previewURL'];
    _webFormatURL = parsedJson['webformatURL'];
    _largeImageURL = parsedJson['largeImageURL'];
  }

  static List<Image> fromJsonList(List parsedJsonList) {
    return parsedJsonList
        .map((parsedJson) => Image.fromJson(parsedJson))
        .toList();
  }

  String get largeImageURL => _largeImageURL;

  String get webFormatURL => _webFormatURL;

  String get previewURL => _previewURL;
}
