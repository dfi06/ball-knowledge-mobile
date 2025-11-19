// To parse this JSON data, do
//
//     final productEntry = productEntryFromJson(jsonString);

import 'dart:convert';

List<ProductEntry> productEntryFromJson(String str) => List<ProductEntry>.from(
  json.decode(str).map((x) => ProductEntry.fromJson(x)),
);

String productEntryToJson(List<ProductEntry> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ProductEntry {
  String id;
  DateTime createdAt;
  String name;
  int price;
  String description;
  String thumbnail;
  String category;
  int? userId;
  bool isFeatured;
  int productViews;

  ProductEntry({
    required this.id,
    required this.createdAt,
    required this.name,
    required this.price,
    required this.description,
    required this.thumbnail,
    required this.category,
    required this.userId,
    required this.isFeatured,
    required this.productViews,
  });

  factory ProductEntry.fromJson(Map<String, dynamic> json) => ProductEntry(
    id: json["id"],
    createdAt: DateTime.parse(json["created_at"]),
    name: json["name"],
    price: json["price"],
    description: json["description"],
    thumbnail: json["thumbnail"],
    category: json["category"],
    userId: json["user_id"],
    isFeatured: json["is_featured"],
    productViews: json["product_views"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "created_at": createdAt.toIso8601String(),
    "name": name,
    "price": price,
    "description": description,
    "thumbnail": thumbnail,
    "category": category,
    "user_id": userId,
    "is_featured": isFeatured,
    "product_views": productViews,
  };
}
