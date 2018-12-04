import 'package:http/src/byte_stream.dart';

abstract class MessageInterface {
  String getProtocolVersion();

  MessageInterface withProtocolVersion(String version);

  Map<String, List<String>> getHeaders();

  bool hasHeader(String name);

  List<String> getHeader(String name);

  String getHeaderLine(String name);

  MessageInterface withHeader(String name, String value);

  MessageInterface withAddedHeader(String name, String value);

  MessageInterface withoutHeader(String name);

  ByteStream getBody();

  MessageInterface withBody(ByteStream body);
}
