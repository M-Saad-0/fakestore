
class CartModel {
  final int id;
  final int userId;
  final DateTime date;
  final List<CartProductModel> products;

  const CartModel({
    required this.id,
    required this.userId,
    required this.date,
    required this.products,
  });

  factory CartModel.fromJson(Map<String, dynamic> json) {
    return CartModel(
      id: json['id'],
      userId: json['userId'],
      
      date: DateTime.parse(json['date']), 
      products: (json['products'] as List)
          .map((e) => CartProductModel.fromJson(e))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'userId': userId,
      'date': date.toIso8601String(),
      'products': products.map((e) => e.toJson()).toList(),
    };
  }

}

class CartProductModel {
  final int productId;
  final int quantity;

  const CartProductModel({
    required this.productId,
    required this.quantity,
  });

  factory CartProductModel.fromJson(Map<String, dynamic> json) {
    return CartProductModel(
      productId: json['productId'],
      quantity: json['quantity'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'productId': productId,
      'quantity': quantity,
    };
  }

  CartProductModel copyFrom(int? p, int? q){
    return CartProductModel(productId: p??productId, quantity: q??quantity);
  }
}