import 'package:autojaquezapp/domain/core/request/client_response.dart';

abstract class IRequestApi {
  Future<ClientResponse> get<J>(
      String endPointAction, String auth_token, J data);
  Future<ClientResponse> post<J>(String endPointAction, J data);
  void updateCookie(Map<String, String> headers);
}
