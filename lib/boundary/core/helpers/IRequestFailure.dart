import 'package:autojaquezapp/domain/core/request/client_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'IRequestFailure.freezed.dart';

@freezed
abstract class IRequestFailure with _$IRequestFailure {
  const factory IRequestFailure.serverError(ClientResponse response) =
      _serverError;
  const factory IRequestFailure.unauthorized(ClientResponse response) =
      _unauthorized;
}
