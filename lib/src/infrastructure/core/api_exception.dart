class RequestFailureException implements Exception {
  final int responseCode;
  final String message;

  const RequestFailureException({this.responseCode, this.message});
}

class UserNotFoundException implements Exception {
  final String message;

  const UserNotFoundException({this.message});
}