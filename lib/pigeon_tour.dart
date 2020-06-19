import 'dart:async';

import 'package:pigeon_tour/message.dart';

class PigeonTour {
  static final api = Api();

  static Future<String> get platformVersion async {
    var searchRequest = SearchRequest()..query = 'getPlatformVersion';
    var searchReply = await api.search(searchRequest);
    return searchReply.result;
  }
}
