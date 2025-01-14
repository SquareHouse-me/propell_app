import 'dart:developer';

import 'package:get/get.dart';
import 'package:propell/configs/generalWidgets/export_general.dart';
import 'package:propell/data/repository/home_repo.dart';
import 'package:propell/data/response/status.dart';
import 'package:propell/main.dart';
import 'package:propell/models/category/category.dart';
import 'package:propell/models/consultation/consultation.dart';
import 'package:propell/models/consultationTimeSlot/time_slot.dart';
import 'package:propell/models/services/services.dart';
import 'package:propell/viewModels/controllers/summary_controller.dart';
import 'package:propell/viewModels/services/notification_services.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeController extends GetxController {
  HomeRepo homeRepo;
  HomeController({required this.homeRepo});
  RxBool isLocationSelected = true.obs;
  int catId = 1;
  RxString selectedTimeId = '-1'.obs;
  RxString language = 'English'.obs;
  RxString languageCode = 'English'.obs;
  int serviceId = 0;
  int consultationId = 0;
  Rx<DateTime> selectedDate = Rx<DateTime>(DateTime.now());
  Rx<DateTime> focusedDay = Rx<DateTime>(DateTime.now());
// for Category api
  Rx<List<CategoryResponse>> categoryList = Rx<List<CategoryResponse>>([]);
  Rx<List<SliderResponse>> sliderList = Rx<List<SliderResponse>>([]);
  final cateogryStatus = Status.LOADING.obs;
  RxString categoryErrorMessage = ''.obs;
  void handleCategoryError(String errorMessage) =>
      categoryErrorMessage.value = errorMessage;
  // Setter functions
  void setCateogryStatus(Status _value) => cateogryStatus.value = _value;
  void setCategory(List<CategoryResponse> _value) =>
      categoryList.value = _value;
  void setSlider(List<SliderResponse> _value) => sliderList.value = _value;

// for Consultation api
  Rx<List<ConsultationData>> consultList = Rx<List<ConsultationData>>([]);

  final consultStatus = Status.LOADING.obs;
  RxString consultErrorMessage = ''.obs;

  void handleConsultError(String errorMessage) =>
      consultErrorMessage.value = errorMessage;
  // Setter functions
  void setConsultStatus(Status _value) => consultStatus.value = _value;
  void setConsult(List<ConsultationData> _value) => consultList.value = _value;

  /// services api

  Rx<List<ServicesResponseData>> servicesList =
      Rx<List<ServicesResponseData>>([]);

  final servicesStatus = Status.LOADING.obs;
  RxString servicesErrorMessage = ''.obs;

  void handleServicesStatusError(String errorMessage) =>
      servicesErrorMessage.value = errorMessage;
  // Setter functions
  void setServicesStatus(Status _value) => servicesStatus.value = _value;
  void setServices(List<ServicesResponseData> _value) =>
      servicesList.value = _value;

  /// TimeSlot api

  Rx<List<TimeSlotResponseData>> timeSlotList =
      Rx<List<TimeSlotResponseData>>([]);

  final timeSlotStatus = Status.LOADING.obs;
  RxString timeSlotErrorMessage = ''.obs;

  void handleTimeSlotError(String errorMessage) =>
      timeSlotErrorMessage.value = errorMessage;
  // Setter functions
  void setTimeSlotStatus(Status _value) => timeSlotStatus.value = _value;
  void setTimeSlot(List<TimeSlotResponseData> _value) =>
      timeSlotList.value = _value;

  NotificationServices services = NotificationServices();
  @override
  void onReady() {
    super.onReady();
    _loadSavedValue();
    services.requestNotificationPermission();
    services.setupInteractMessage(Get.context!);
    services.firebaseInit(Get.context!);
    Get.put(SummaryController(summaryRepo: getIt()));
  }

  void _loadSavedValue() async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();

    language.value = await _prefs.getString('lang') ?? "English";
    languageCode.value = await _prefs.getString('langCode') ?? "en";
    print(language.value + 'fgdfgdgfdgdfg ' + languageCode.value);
    await myCategoryApi();
  }

  /// Category API
  Future<void> myCategoryApi() async {
    try {
      setCateogryStatus(Status.LOADING);
      languageCode.value = language.value.contains('English') ? 'en' : 'ar';
      await homeRepo
          .categoryApi(lng: languageCode.value.toString())
          .then((value) {
        // Check if the response is a List or Map
        if (value is Map<String, dynamic>) {
          // If the response is a Map
          if (value['success'].toString() == 'true') {
            CategoryModel categoryModel = CategoryModel.fromJson(value);

            categoryList.value = [];
            setCategory(categoryModel.dataResponse.categoryResponse);
            setSlider(categoryModel.dataResponse.sliderResponse);
            setCateogryStatus(Status.COMPLETED);
          } else {
            handleCategoryError(value['message'].toString());
            setCateogryStatus(Status.ERROR);
          }
        }
      }).onError((e, stackTrace) {
        handleCategoryError(e.toString());
        log(e.toString());
        setCateogryStatus(Status.ERROR);
      });
    } catch (e) {
      log('message 3');
      log(e.toString());
      handleCategoryError(e.toString());
      setCateogryStatus(Status.ERROR);
    }
  }

  /// Consultation api get

  Future<void> consultationApi() async {
    try {
      setConsultStatus(Status.LOADING);
      languageCode.value = language.value.contains('English') ? 'en' : 'ar';
      var data = {
        "lang": languageCode.value.toString(),
        "category_id": catId,
      };
      await homeRepo
          .getConsultations(data: data, isHeaderRequired: false)
          .then((value) {
        // If the response is a Map
        if (value['success'].toString() == 'true') {
          ConsultationModel categoryModel = ConsultationModel.fromJson(value);

          consultList.value = [];
          setConsult(categoryModel.consultResponse.data);

          setConsultStatus(Status.COMPLETED);
        } else {
          handleCategoryError(value['message'].toString());
          setConsultStatus(Status.ERROR);
        }
      }).onError((e, stackTrace) {
        handleConsultError(e.toString());
        log(e.toString());
        setConsultStatus(Status.ERROR);
      });
    } catch (e) {
      log('message 3');
      log(e.toString());
      handleConsultError(e.toString());
      setConsultStatus(Status.ERROR);
    }
  }

  /// Services api get

  Future<void> servicesApi() async {
    try {
      setServicesStatus(Status.LOADING);
      languageCode.value = language.value.contains('English') ? 'en' : 'ar';
      var data = {
        "lang": languageCode.value.toString(),
        "category_id": catId,
      };
      await homeRepo
          .getServices(data: data, isHeaderRequired: false)
          .then((value) {
        // Check if the response is a List or Map

        // If the response is a Map
        if (value['success'].toString() == 'true') {
          ServicesModel categoryModel = ServicesModel.fromJson(value);

          servicesList.value = [];
          setServices(categoryModel.consultResponse.data);

          setServicesStatus(Status.COMPLETED);
        } else {
          handleServicesStatusError(value['message'].toString());
          setServicesStatus(Status.ERROR);
        }
      }).onError((e, stackTrace) {
        handleServicesStatusError(e.toString());
        log(e.toString());
        setServicesStatus(Status.ERROR);
      });
    } catch (e) {
      log('message 3');
      log(e.toString());
      handleServicesStatusError(e.toString());
      setServicesStatus(Status.ERROR);
    }
  }

// Time Solt api get

  Future<void> timeSlotApi(
      {required String consultationId, required String date}) async {
    try {
      setTimeSlotStatus(Status.LOADING);

      languageCode.value = language.value.contains('English') ? 'en' : 'ar';
      var data = {
        "lang": languageCode.value.toString(),
        "consultation_id": consultationId,
        "date": date,
      };
      await homeRepo
          .getConsultationTime(data: data, isHeaderRequired: false)
          .then((value) {
        // Check if the response is a List or Map

        // If the response is a Map
        if (value['success'].toString() == 'true') {
          TimeSlotModel categoryModel = TimeSlotModel.fromJson(value);

          timeSlotList.value = [];
          setTimeSlot(categoryModel.timeSlotModelResponse);

          setTimeSlotStatus(Status.COMPLETED);
        } else {
          handleTimeSlotError(value['message'].toString());
          setTimeSlotStatus(Status.ERROR);
        }
      }).onError((e, stackTrace) {
        handleTimeSlotError(e.toString());
        log(e.toString());
        setTimeSlotStatus(Status.ERROR);
      });
    } catch (e) {
      log('message 3');
      log(e.toString());
      handleTimeSlotError(e.toString());
      setTimeSlotStatus(Status.ERROR);
    }
  }
}
