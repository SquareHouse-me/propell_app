 
import 'package:intl/intl.dart';
import 'package:propell/configs/generalWidgets/export_general.dart';
import 'package:propell/data/network/export_view.dart';
import 'package:propell/data/repository/summary_repo.dart';
import 'package:propell/data/response/status.dart';
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
  RxString phoneNumber = '997 329 98'.obs;
  RxBool isCheckoutLoading = false.obs;
  RxInt totalHour = 0.obs;
  TextEditingController inputName = TextEditingController();
  TextEditingController inputEmail = TextEditingController();
  TextEditingController inputPhone = TextEditingController();
  TextEditingController inputDescription = TextEditingController();
 
  final formKey = GlobalKey<FormState>();
  Rx<MessageModelResponse> summaryModel =
      Rx<MessageModelResponse>(const MessageModelResponse());
  Future<void> checkout() async {
    try {
      final HomeController home = Get.find<HomeController>();

      isCheckoutLoading.value = true;
      String formattedDate =
          DateFormat('yyyy-MM-dd').format(home.selectedDate.value);
      HomeController homeController = Get.find<HomeController>();
      homeController.languageCode.value =
          homeController.language.value.contains('English') ? 'en' : 'ar';
      

      var data = {
        "lang": homeController.languageCode.value.toString(),
        "service_id": home.serviceId.toString(),
        "consultation_id": home.consultationId.toString(),
        "cat_id": home.catId.toString(),
        "date": formattedDate.toString(),
        "timeslot_id": home.selectedTimeId.value.toString(),
        "name": inputName.text.trim().toString(),
        "email": inputEmail.text.trim().toString(),
        "phone": countryCode + inputPhone.text.trim().toString(), 
        "method": 'knet',
        'fcm_token': '', 
      };
      print(data.toString() + " check");
      await summaryRepo
          .checkoutApi(data: data, isHeaderRequired: false)
          .then((value) async {
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
          log('message after  response ${summaryModel.value.bookingRespons.id}');
          print(currentStep.value.toString() + " after update");

          
           
          isCheckoutLoading.value = false;
          inputName.clear();
          inputEmail.clear();
          inputPhone.clear();
          inputDescription.clear();
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

  Future<void> checkoutUpdate(bool isCheckoutButton,String id) async {
    try {
      final HomeController home = Get.find<HomeController>();

      isCheckoutLoading.value = true;

      HomeController homeController = Get.find<HomeController>();
      homeController.languageCode.value =
          homeController.language.value.contains('English') ? 'en' : 'ar';
           var data ;
       if(isCheckoutButton==true){
 data= {
        "lang": homeController.languageCode.value.toString(),
        "service_id":summaryModel.value.bookingRespons.service_id.toString(),
        "consultation_id": summaryModel.value.bookingRespons.consultation_id.toString(),
        "cat_id":summaryModel.value.bookingRespons.cat_id.toString(),
        "date": summaryModel.value.bookingRespons.booking_date.toString(),
        "timeslot_id": summaryModel.value.bookingRespons.timeslot_id.toString(),
        "name": inputName.text.trim().toString(),
        "email": summaryModel.value.bookingRespons.email.toString(),
        "phone": countryCode + inputPhone.text.trim().toString(),
         
        "method": 'knet',
        'fcm_token': '',
        "booking_id": id,
      };

       print(data.toString() + " update check");
      await summaryRepo
          .checkoutApi(data: data, isHeaderRequired: false)
          .then((value) async {
       
          if (value['success'].toString() == 'true') {
            log('message before    ');
            summaryModel.value=  MessageModelResponse();
            PaymentResponse paymentResponse = PaymentResponse.fromJson(value);
            summaryModel.value = paymentResponse.message;
            print(paymentResponse.message.url.toString());
            currentStep.value += 1;
            update();
            log('message after  response ${summaryModel.value.bookingRespons.id}');
            print(currentStep.value.toString() + " after update");

             
     
            isCheckoutLoading.value = false;
            inputName.clear();
            inputEmail.clear();
            inputPhone.clear();
            inputDescription.clear();
          } else {
            log('message else');
            isCheckoutLoading.value = false;
          }
          
      }).onError((e, stackTrace) {
        isCheckoutLoading.value = false;
        log('messegae error $e');
      });
       }else{
data= {
        "lang": homeController.languageCode.value.toString(),
        "booking_id": id,
      };
       print(data.toString() + " get update ");
      await summaryRepo
          .checkoutApi(data: data, isHeaderRequired: false)
          .then((value) async {
       
          log('message');
          // If the response is a Map
          if (value['success'].toString() == 'true') {
            log('message before    ');
            PaymentResponse paymentResponse = PaymentResponse.fromJson(value);
            summaryModel.value = paymentResponse.message;
            print(paymentResponse.message.url.toString());

            log('message after  response ${summaryModel.value.bookingRespons.id}');
           

             
            isCheckoutLoading.value = false;
            inputName.text = summaryModel.value.bookingRespons.name;
            inputEmail.text = summaryModel.value.bookingRespons.email;
            inputPhone.text = summaryModel.value.bookingRespons.phone;
           
          } else {
            log('message else');
            isCheckoutLoading.value = false;
          }
         
      }).onError((e, stackTrace) {
        isCheckoutLoading.value = false;
        log('messegae error $e');
      });
       }
     
     
    } catch (e) {
      isCheckoutLoading.value = false;
    }
  }

  Rx<MessageModelResponse> thankYouModel =
      Rx<MessageModelResponse>(const MessageModelResponse());
  Rx<Status> thankYouStatus = Status.LOADING.obs;
  Future<void> thankyouDataGet(String booking_id) async {
    try {
      thankYouStatus.value = Status.LOADING;

      HomeController homeController = Get.find<HomeController>();
      homeController.languageCode.value =
          homeController.language.value.contains('English') ? 'en' : 'ar';
      var data = {
        "lang": homeController.languageCode.value.toString(),
        "booking_id": booking_id
      };
      print(data.toString());
      await summaryRepo
          .checkoutApi(data: data, isHeaderRequired: false)
          .then((value) {
        // Check if the response is a List or Map
        log('message');
        // If the response is a Map
        if (value['success'].toString() == 'true') {
          log('message before    ');
          PaymentResponse paymentResponse = PaymentResponse.fromJson(value);
          thankYouModel.value = paymentResponse.message;
          print(paymentResponse.message.url.toString());
 
          thankYouStatus.value = Status.COMPLETED;
        } else {
          log('message else');
          thankYouStatus.value = Status.ERROR;
        }
      }).onError((e, stackTrace) {
        thankYouStatus.value = Status.ERROR;
        log('messegae error $e');
      });
    } catch (e) {
      thankYouStatus.value = Status.ERROR;
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
