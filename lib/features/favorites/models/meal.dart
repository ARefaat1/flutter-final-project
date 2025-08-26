// for testing purposes may or not be deleted to fetch for db
class Meal { 
  final String? id;
  final String? title;
  final String? description;
  final String? imageUrl;
  final double? price;
  final bool? isFavorite;

  Meal({
   this.id,
    this.title,
    this.description,
    this.imageUrl,
    this.price,
    this.isFavorite,
  });
}