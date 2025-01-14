import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:propell/configs/generalWidgets/export_general.dart';
import 'package:propell/data/network/export_view.dart';
import 'package:propell/data/repository/summary_repo.dart';
import 'package:propell/models/checkout/checkout.dart';
import 'package:propell/viewModels/controllers/home_controller.dart';

class SummaryController extends GetxController {
  final SummaryRepo summaryRepo;
  SummaryController({required this.summaryRepo});
  RxInt currentStep = 0.obs;
  RxInt currentIndex = 0.obs;
  RxString fCMtoken = ''.obs;
  RxString countryCode = '965'.obs;
  RxString countryEmoji = '🇰🇼'.obs;
  RxString phoneNumber = '601 106 1200'.obs;
  RxBool isCheckoutLoading = false.obs;
  RxInt totalHour = 0.obs;
  Rx<MessageModelResponse?> summaryModel = Rx<MessageModelResponse?>(null);
  Future<void> checkout(
      {required String name,
      required String email,
      String? description,
      required String phone}) async {
    try {
      final HomeController home = Get.find<HomeController>();
      isCheckoutLoading.value = true;
      String formattedDate =
          DateFormat('yyyy-MM-dd').format(home.selectedDate.value);
      HomeController homeController = Get.find<HomeController>();
     homeController. languageCode.value =homeController.  language.value.contains('English') ? 'en' : 'ar';
      var data = {
        "lang": homeController.languageCode.value.toString(),
        "service_id": home.serviceId,
        "consultation_id": home.consultationId,
        "cat_id": home.catId,
        "date": formattedDate,
        "timeslot_id": home.selectedTimeId.value,
        "name": name,
        "email": email,
        "phone": countryCode + phone,
        "discription": description,
        "method": 'knet',
        'fcm_token': fCMtoken.value.toString()
      };
      await summaryRepo
          .checkoutApi(data: data, isHeaderRequired: false)
          .then((value) {
        // Check if the response is a List or Map
        log('message');
        // If the response is a Map
        if (value['success'].toString() == 'true') {
          log('message before    ');
          PaymentResponse paymentResponse = PaymentResponse.fromJson(value);
          summaryModel.value = paymentResponse.message;
          print(paymentResponse.message.url.toString());
          currentStep.value += 1;
          update();
          log('message after');
          print(currentStep.value.toString() + " after update");
          isCheckoutLoading.value = false;
        } else {
          log('message else');
          isCheckoutLoading.value = false;
        }
      }).onError((e, stackTrace) {
        isCheckoutLoading.value = false;
        log('messegae error $e');
      });
    } catch (e) {
      isCheckoutLoading.value = false;
    }
  }

  TimeOfDay parseTimeOfDay(String time) {
    final format = time.toLowerCase().endsWith('pm') ? 12 : 0;
    final timeParts = time.replaceAll(RegExp(r'[apm ]'), '').split(':');
    int hour = int.parse(timeParts[0]) % 12 + format;
    int minute = int.parse(timeParts[1]);
    return TimeOfDay(hour: hour, minute: minute);
  }

  calculateTotal({required String timeSlot}) {
    TimeOfDay pickUpTime =
        parseTimeOfDay(timeSlot.split(" - ")[0].trim().toString());
    TimeOfDay dropOffTime =
        parseTimeOfDay(timeSlot.split(" - ")[1].trim().toString());
    totalHour.value = 0;
    // Convert pickUpTime to minutes
    int pickUpMinutes = pickUpTime.hour * 60 + pickUpTime.minute;

    // Convert dropOffTime to minutes
    int dropOffMinutes = dropOffTime.hour * 60 + dropOffTime.minute;

    // If dropOffTime is earlier, add 24 hours (in minutes) to dropOffTime
    if (dropOffMinutes < pickUpMinutes) {
      dropOffMinutes += 24 * 60;
    }

    // Calculate the difference in minutes
    int differenceInMinutes = dropOffMinutes - pickUpMinutes;

    // Convert the difference to hours (rounding down)
    int totalHours = (differenceInMinutes / 60).floor();
    totalHour.value = totalHours;
  }
}
