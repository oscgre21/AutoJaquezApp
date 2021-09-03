import 'package:autojaquezapp/domain/core/request/client_response.dart';
import 'package:dartz/dartz.dart';

import 'IRequestFailure.dart';

abstract class IRequestApi {
  Future<Either<IRequestFailure, ClientResponse>> get<J>(
      String endPointAction, J data);
  Future<Either<IRequestFailure, ClientResponse>> post<J>(
      String endPointAction, J data);
  void updateCookie(Map<String, String> headers);
}
