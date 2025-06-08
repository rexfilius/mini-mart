class CartItem {
  final String imageUrl;
  final String name;
  final double price;
  int quantity;
  final bool inStock;

  CartItem({
    required this.imageUrl,
    required this.name,
    required this.price,
    this.quantity = 1,
    this.inStock = true,
  });

  CartItem copyWith({
    String? imageUrl,
    String? name,
    double? price,
    int? quantity,
    bool? inStock,
  }) {
    return CartItem(
      imageUrl: imageUrl ?? this.imageUrl,
      name: name ?? this.name,
      price: price ?? this.price,
      quantity: quantity ?? this.quantity,
      inStock: inStock ?? this.inStock,
    );
  }

  CartItem.empty()
    : imageUrl = '',
      name = '',
      price = 0.0,
      quantity = 1,
      inStock = false;
}

final List<CartItem> demoCartItems = [
  CartItem(
    imageUrl: 'assets/png/iphone1.png',
    name: "Apple iPhone 16 128GB | Teal",
    price: 700.00,
  ),
  CartItem(
    imageUrl: 'assets/png/iphone1.png',
    name: "Apple iPhone 16 128GB | Teal",
    price: 700.00,
  ),
  CartItem(
    imageUrl: 'assets/png/iphone1.png',
    name: "Apple iPhone 16 128GB | Teal",
    price: 700.00,
  ),
  CartItem(
    imageUrl: 'assets/png/iphone1.png',
    name: "Apple iPhone 16 128GB | Teal",
    price: 700.00,
  ),
  CartItem(
    imageUrl: 'assets/png/iphone1.png',
    name: "Apple iPhone 16 128GB | Teal",
    price: 700.00,
  ),
  CartItem(
    imageUrl: 'assets/png/iphone1.png',
    name: "Apple iPhone 16 128GB | Teal",
    price: 700.00,
  ),
  CartItem(
    imageUrl: 'assets/png/iphone1.png',
    name: "Apple iPhone 16 128GB | Teal",
    price: 700.00,
  ),
  CartItem(
    imageUrl: 'assets/png/iphone1.png',
    name: "Apple iPhone 16 128GB | Teal",
    price: 700.00,
  ),
];
