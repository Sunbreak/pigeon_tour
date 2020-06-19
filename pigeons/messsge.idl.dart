import 'package:pigeon/pigeon.dart';

class SearchRequest {
  String query;
}

class SearchReply {
  String result;
}

@HostApi()
abstract class Api {
  SearchReply search(SearchRequest request);
}

void configurePigeon(PigeonOptions opts) {
  opts.dartOut = 'lib/message.dart';
  opts.objcHeaderOut = 'ios/Classes/Messages.h';
  opts.objcSourceOut = 'ios/Classes/Messages.m';
  opts.objcOptions.prefix = 'FLT';
  var package = 'com.example.pigeon_tour';
  opts.javaOut =
      'android/src/main/java/${package.replaceAll('.', '/')}/Messages.java';
  opts.javaOptions.package = package;
}
