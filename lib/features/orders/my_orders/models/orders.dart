class Order {
  final String title;
  final String price;
  final String date;
  final String items;
  final String image;
  final String status; // active, completed, cancelled

  Order({
    required this.title,
    required this.price,
    required this.date,
    required this.items,
    required this.image,
    required this.status,
  });
}
