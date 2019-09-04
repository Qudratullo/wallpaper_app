import 'dart:convert';

import 'package:wallpaper_app/models/image.dart';
import 'package:http/http.dart' as http;
import 'package:wallpaper_app/models/images_response.dart';
import 'package:wallpaper_app/utils/constants.dart';
import 'package:wallpaper_app/utils/exceptions.dart';

class ImagesApiProvider {
  Future<List<Image>> getImages(int pageNumber) async {
    http.Response response;

    try {
      response = await http.get(
          Constants.BASE_URL + "?key=${Constants.API_KEY}&image_type=photo");
    } catch (e) {
      throw ConnectionException();
    }

    return ImagesResponse.fromJson(json.decode(response.body)).images;
  }
}
