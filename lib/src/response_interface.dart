abstract class ResponseInterface {
  int getStatusCode();

  ResponseInterface withStatus(int code, {String reasonPhrase = ''});

  String getReasonPhrase();
}