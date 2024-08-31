
abstract class BaseService {
  final String baseurl = "https://itunes.apple.com/search?term=";

  Future<dynamic> getRequest(String url, {Map<String, dynamic> queryParameters,
      Map<String, dynamic> header});
  Future<dynamic> putRequest(String url, {Map<String, dynamic> queryParameters,
      Map<String, dynamic> header});
  Future<dynamic> postRequest(String url, {Map<String, dynamic> queryParameters,
      Map<String, dynamic> header});
}

