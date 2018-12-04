// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

/// The base class for HTTP responses.
///
/// Subclasses of [BaseResponse] are usually not constructed manually; instead,
/// they're returned by [BaseClient.send] or other HTTP client methods.
abstract class BaseResponse {



  /// Creates a new HTTP response.
  BaseResponse(this.statusCode,
      {this.contentLength,
      this.headers: const {},
      this.isRedirect: false,
      this.persistentConnection: true,
      this.reasonPhrase}) {
    if (statusCode < 100) {
      throw new ArgumentError("Invalid status code $statusCode.");
    } else if (contentLength != null && contentLength < 0) {
      throw new ArgumentError("Invalid content length $contentLength.");
    }
  }
}
