import 'package:http/http.dart';
import 'package:http/src/message_interface.dart';

mixin MessageMixin {
  final String protocolVersion = '1.1';

  /// The headers for this response.
  Map<String, List<String>> headers;

  /// The stream from which the response body data can be read. This should
  /// always be a single-subscription stream.
  ByteStream stream;

  @override
  String getProtocolVersion() {
    return this.protocolVersion;
  }

  @override
  MessageInterface withProtocolVersion(String version) {
    // TODO: implement withProtocolVersion
    return null;
  }

  @override
  Map<String, List<String>> getHeaders() {
    return this.headers;
  }

  @override
  bool hasHeader(String name) {
    return this.headers.containsKey(name);
  }

  @override
  MessageInterface withAddedHeader(String name, String value) {
    return new Response(this.);
  }

  @override
  MessageInterface withHeader(String name, String value) {
    // TODO: implement withHeader
    return null;
  }

  @override
  MessageInterface withoutHeader(String name) {
    // TODO: implement withoutHeader
    return null;
  }

  @override
  List<String> getHeader(String name) {
    return this.headers[name];
  }

  @override
  String getHeaderLine(String name) {
    return this.headers[name].join(',');
  }

  @override
  ByteStream getBody() {
    return this.stream;
  }

  @override
  MessageInterface withBody(Stream<List<int>> body) {
    // TODO: implement withBody
    return null;
  }
}