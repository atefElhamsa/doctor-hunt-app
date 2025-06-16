class DoctorSelectTimeModel {
  final String image;
  final String name;
  bool isFavourite;

  DoctorSelectTimeModel({
    required this.image,
    required this.name,
    this.isFavourite = false,
  });
}
