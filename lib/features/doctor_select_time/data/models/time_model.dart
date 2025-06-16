class TimeModel {
  final String day;
  final String numberOfSlot;

  const TimeModel({required this.day, required this.numberOfSlot});
}

final List<TimeModel> times = [
  const TimeModel(day: "Today, 23 Feb", numberOfSlot: "No slots available"),
  const TimeModel(day: "Tomorrow, 24 Feb", numberOfSlot: "9 slots available"),
  const TimeModel(day: "Thu, 25 Feb", numberOfSlot: "10 slots available"),
];

final List<String> timeAfter7 = [
  "1:00 PM",
  "1:30 PM",
  "2:00 PM",
  "2:30 PM",
  "3:00 PM",
  "3:30 PM",
  "4:00 PM",
];

final List<String> timeEvening5 = [
  "5:00 PM",
  "5:30 PM",
  "6:00 PM",
  "6:30 PM",
  "7:00 PM",
];
