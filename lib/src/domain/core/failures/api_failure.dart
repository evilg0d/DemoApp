import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_failure.freezed.dart';

@freezed
abstract class APIFailure with _$APIFailure {
  const factory APIFailure.notConnected() = NotConnected;

  const factory APIFailure.serverError(String message) = ServerError;

  const factory APIFailure.userNotFound(String message) = UserNotFound;
}
