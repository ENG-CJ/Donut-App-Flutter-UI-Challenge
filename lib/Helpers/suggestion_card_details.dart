class SuggestionDetails{
  final String assetPath;
  final String title;
  final String? discount;
  final double price;
  final double rate;

  SuggestionDetails({required this.assetPath,
    required this.title,
    required this.price,
    required this.rate,
    this.discount});

}