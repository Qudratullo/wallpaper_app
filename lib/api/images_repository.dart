import 'package:wallpaper_app/api/images_api_provider.dart';
import 'package:wallpaper_app/models/image.dart';

class ImagesRepository {
  final _apiProvider = ImagesApiProvider();

  Future<List<Image>> getImages(int pageNumber) {
    return _apiProvider.getImages(pageNumber);
  }
}