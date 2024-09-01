
abstract class BaseService {
  final String baseurl = "https://mfatest.wijungle.com:9084";

  Future<dynamic> getRequest(String url, {Map<String, dynamic> queryParameters,
      Map<String, dynamic> header});
  Future<dynamic> putRequest(String url, {Map<String, dynamic> queryParameters,
      Map<String, dynamic> header});
  Future<dynamic> postRequest(String url, {Map<String, dynamic> queryParameters,
      Map<String, dynamic> header});
}

