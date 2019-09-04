import 'dart:async';

import 'package:wallpaper_app/views/page_state.dart';

class MainPageBloc {
  final _streamController = StreamController<PageState>();

  dispose() {
    _streamController.close();
  }
}