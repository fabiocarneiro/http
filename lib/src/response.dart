// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:async';

import 'package:http/src/message_interface.dart';
import 'package:http/src/response_interface.dart';
import 'package:http/src/message_mixin.dart';
import 'byte_stream.dart';

/// An HTTP response where the entire response body is known in advance.
class Response with MessageMixin implements ResponseInterface, MessageInterface  {

  /// The status code of the response.
  final int statusCode;

  /// The reason phrase associated with the status code.
  final String reasonPhrase;

  /// The size of the response body, in bytes.
  /// If the size of the request is not known in advance, this is `null`.
  final int contentLength;

  /// Whether this response is a redirect.
  final bool isRedirect;

  /// Whether the server requested that a persistent connection be maintained.
  final bool persistentConnection;

  Response({ByteStream stream,
        int statusCode,
        int contentLength,
        Map<String, List<String>> headers: const {},
        bool isRedirect: false,
        bool persistentConnection: true,
        String reasonPhrase});

  @override
  String getReasonPhrase() {
    return this.reasonPhrase;
  }

  @override
  int getStatusCode() {
    return this.statusCode;
  }

  @override
  ResponseInterface withStatus(int code, {String reasonPhrase = ''}) {
    // TODO: implement withStatus
    return null;
  }

}