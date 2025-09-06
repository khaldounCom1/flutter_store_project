class Product {
  final String name;
  final double price;
  final int minutes; // time indicator (مثلاً زمن التوصيل/الإضافة)
  final double rating;

  Product({
    required this.name,
    required this.price,
    required this.minutes,
    required this.rating,
  });
}
