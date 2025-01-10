// ignore_for_file: unused_local_variable
import 'package:propell/data/app_exceptions.dart';
import 'package:propell/data/network/base_api_service.dart';

import 'export_view.dart';
import 'package:http/http.dart' as http;

class NetworkApiService extends BaseApiServices {
  @override
  Future<dynamic> getApi(
      {required String url, required bool isHeaderRequired}) async {
    if (kDebugMode) {
      print(url);
    }

    try {
      dynamic responseJson;
      if (isHeaderRequired == true) {
        String token = '';

        // creating header for post api
        final headerMap = {
          "Accept": "application/json",
          "Authorization": 'Bearer $token'
        };
        log(token);

        final response = await http
            .get(Uri.parse(url), headers: headerMap)
            .timeout(const Duration(seconds: 30));
        responseJson = returnResponse(response);
        print("responseJson:  " + responseJson.toString());
        return responseJson;
      } else {
        final headerMap = {
          "Accept": "application/json",
        };

        final response = await http
            .get(Uri.parse(url), headers: headerMap)
            .timeout(const Duration(seconds: 30));
        responseJson = returnResponse(response);

        return responseJson;
      }
    } on SocketException {
      throw InternetException('internet is slow try again');
    } on RequestTimeOut {
      throw RequestTimeOut('internet is slow try again');
    }
  }

  @override
  Future<dynamic> postApi(
      {var data, required String url, required bool isHeaderRequired}) async {
    dynamic responseJson;

    try {
      if (isHeaderRequired) {
        String token = '';

        // creating header for post api
        final headerMap = {
          "Accept": "application/json",
          "Authorization": 'Bearer $token'
        };
        log(token.toString() + " token");

        // log(url.toString());
        final response = await http
            .post(
              Uri.parse(url),
              body: data,
              headers: headerMap,
            )
            .timeout(const Duration(seconds: 10));

        responseJson = returnResponse(response);
        log("responseJson: $responseJson ");
      } else {
        log(data.toString() + 'before passing http post');
        log(url.toString());
        final response = await http.post(
          Uri.parse(url),
          body: jsonEncode(data),
          headers: {
            "Content-Type": "application/json",
            "Accept": "application/json",
          },
        ).timeout(const Duration(seconds: 10));
        // var repoData = jsonDecode(response.body);
        // print(repoData.toString() + 'response');
        responseJson = returnResponse(response);
        // log(responseJson.toString());
      }
    } on SocketException {
      throw InternetException('');
    } on TimeoutException {
      throw RequestTimeOut('');
    }
    // if (kDebugMode) {
    //   print(responseJson);
    // }
    return responseJson;
  }

  @override
  Future putApi(
      {required data,
      required String url,
      required bool isHeaderRequired}) async {
    dynamic responseJson;

    try {
      if (isHeaderRequired) {
        String token = '';

        // creating header for post api
        final headerMap = {
          "Accept": "application/json",
          "Authorization": 'Bearer $token'
        };
        log(token);
        // log(data.toString());
        // log(url.toString());
        final response = await http
            .put(
              Uri.parse(url),
              body: data,
              headers: headerMap,
            )
            .timeout(const Duration(seconds: 10));

        responseJson = returnResponse(response);
      } else {
        log(data.toString());
        final response = await http.put(
          Uri.parse(url),
          body: jsonEncode(data),
          headers: {
            "Content-Type": "application/json",
            "Accept": "application/json",
          },
        ).timeout(const Duration(seconds: 10));
        // var repoData = jsonDecode(response.body);
        // print(repoData.toString() + 'response');
        responseJson = returnResponse(response);
      }
    } on SocketException {
      throw InternetException('');
    } on TimeoutException {
      throw RequestTimeOut('');
    }
    if (kDebugMode) {
      print(responseJson);
    }
    return responseJson;
  }

  dynamic returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        dynamic responseJson = jsonDecode(response.body);
        return responseJson;
      case 400:
        dynamic responseJson = jsonDecode(response.body);
        return responseJson;
      case 404:
        log(' 404');
        throw InvalidUrlException();

      case 422:
        dynamic responseJson = jsonDecode(response.body);
        return responseJson;
      case 401:
        dynamic responseJson = jsonDecode(response.body);
        throw UnauthorizedException();

      default:
        throw FetchDataException(
            'Error occurred while communicating with the server ${response.statusCode}   ${jsonDecode(response.body)}');
    }
  }

  @override
  Future<dynamic> postStrpieApi(
      {required data, required String url, required String token}) async {
    try {
      // creating header for post api
      final headerMap = {
        "Content-Type": "application/x-www-form-urlencoded",
        "Authorization": 'Bearer $token'
      };
      log(token.toString() + " token");

      // log(url.toString());
      final response = await http
          .post(
            Uri.parse(url),
            body: data,
            headers: headerMap,
          )
          .timeout(const Duration(seconds: 10));

      return response;
    } on SocketException {
      throw InternetException('');
    } on TimeoutException {
      throw RequestTimeOut('');
    }
  }
}
