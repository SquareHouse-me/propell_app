import 'package:propell/configs/res/app_urls.dart';
import 'package:propell/data/network/network_api_service.dart'; 

class SummaryRepo {
  final _apiService = NetworkApiService();
  Future<dynamic> checkoutApi(
      {required var data, required bool isHeaderRequired}) async {
    dynamic response = await _apiService.postApi(
        data: data, url: bookServces, isHeaderRequired: isHeaderRequired);

    return response;
  }
}
