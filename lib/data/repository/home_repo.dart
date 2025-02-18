import 'package:propell/configs/res/app_urls.dart';
import 'package:propell/data/network/network_api_service.dart';

class HomeRepo {
  final _apiService = NetworkApiService();

  /// Category Api
  Future<dynamic> categoryApi({required String lng}) async {
    String url = "$category?lang=$lng";
    dynamic response = _apiService.getApi(url: url, isHeaderRequired: false);

    return response;
  }
    Future<dynamic> getConsultations({required var data, required bool isHeaderRequired}) async {
    dynamic response = await _apiService.postApi(
        data: data,
        url: consultations,
        isHeaderRequired: isHeaderRequired
    );

    return response;
  }
  Future<dynamic> getServices({required var data, required bool isHeaderRequired}) async {
    dynamic response = await _apiService.postApi(
        data: data,
        url: services,
        isHeaderRequired: isHeaderRequired
    );
    

    return response;
  } Future<dynamic> getConsultationTime({required var data, required bool isHeaderRequired}) async {
    dynamic response = await _apiService.postApi(
        data: data,
        url: consultationTime,
        isHeaderRequired: isHeaderRequired
    );
    

    return response;
  }

  Future<dynamic> checkUserAvailabilityApi({required String lng}) async {
    String url = "$userAvailabilityApi?lang=$lng";
    dynamic response = _apiService.getApi(url: url, isHeaderRequired: false);

    return response;
  }
}
