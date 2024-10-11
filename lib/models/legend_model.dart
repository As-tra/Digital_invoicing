class LegendModel {
  final String amount;
  final String percentage;
  final String? image;
  final String title;

  LegendModel({
    required this.amount,
    required this.percentage,
    this.image,
    required this.title,
  });
}
