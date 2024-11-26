import 'dart:convert';

class Product {
  String? id;
  bool available;
  String name;
  String? picture;
  double price;

  Product({
    this.id,
    required this.available,
    required this.name,
    this.picture,
    required this.price,
  });

  factory Product.fromJson(String str) => Product.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Product.fromMap(Map<String, dynamic> json) => Product(
        available: json["available"] ?? false,
        name: json["name"] ?? 'None',
        picture: json["picture"],
        price: json["price"]?.toDouble() ?? 0.0,
      );

  Map<String, dynamic> toMap() => {
        "available": available,
        "name": name,
        "picture": picture,
        "price": price,
      };

  @override
  String toString() {
    return 'id: $id, available: $name, available: $available, picture: $picture, price: $price';
  }

  Product copy() => Product(
        available: this.available,
        name: this.name,
        picture: this.picture,
        price: this.price,
        id: this.id,
      );
}
