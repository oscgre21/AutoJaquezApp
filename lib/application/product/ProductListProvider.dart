import '../../boundary/core/helpers/http_request.dart';
import '../../boundary/core/util/Urls.dart';
import '../../domain/entity/products/Products.dart';

class ProductListProvider {
  late Future<List<Products>> resourse;

  Future<List<Products>> getDataResourse() async {
    HttpRequest rq = new HttpRequest();
    var rt = await rq.get('api/v1/products/', "", null);
    Urls.updateHeader();
    if (rt.success) {
      return (rt.dynamicResult as List)
          .map((i) => Products.fromJson(i))
          .toList();
    }
    return [];
  }

  void requestData(String filter) async {
    resourse = getDataResourse();

    //categories = (body as List).map((i) => Products.fromJson(i)).toList();
  }
}
