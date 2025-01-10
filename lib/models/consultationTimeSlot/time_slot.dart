import 'package:freezed_annotation/freezed_annotation.dart';
part 'time_slot.freezed.dart';
part 'time_slot.g.dart';

@freezed
class TimeSlotModel with _$TimeSlotModel {
  factory TimeSlotModel({
    @Default(false) @JsonKey(name: 'success') bool success,
    @Default('') @JsonKey(name: 'message') String message,
    @Default([])
    @JsonKey(name: 'response')
    List<TimeSlotResponseData> timeSlotModelResponse,
  }) = _TimeSlotModel;

  factory TimeSlotModel.fromJson(Map<String, dynamic> json) =>
      _$TimeSlotModelFromJson(json);
}

@freezed
class TimeSlotResponseData with _$TimeSlotResponseData {
  factory TimeSlotResponseData({
    @Default(0) @JsonKey(name: 'id') int id,
    @Default('') @JsonKey(name: 'day') String day,
    @Default('') @JsonKey(name: 'from') String from,
    @Default('') @JsonKey(name: 'to') String to,
    @Default('') @JsonKey(name: 'timeslot') String timeslot,
    @Default(0) @JsonKey(name: 'booked') int isBooked,
  }) = _TimeSlotResponseData;

  factory TimeSlotResponseData.fromJson(Map<String, dynamic> json) =>
      _$TimeSlotResponseDataFromJson(json);
}
