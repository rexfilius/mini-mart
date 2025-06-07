// ignore: unused_import
import 'package:equatable/equatable.dart';

class Product {
  final String imageUrl;
  final String name;
  final String price;
  final List<String> descriptionBullets;
  int quantity;
  bool isLiked;

  Product({
    required this.imageUrl,
    required this.name,
    required this.price,
    required this.descriptionBullets,
    this.quantity = 1,
    this.isLiked = false,
  });

  Product.empty()
    : imageUrl = '',
      name = '',
      price = '',
      descriptionBullets = [],
      quantity = 1,
      isLiked = false;
}

final List<Product> demoProducts = [
  Product(
    imageUrl: 'assets/jpg/iphone1.png',
    name: 'Apple iPhone 16\n128 GB | Teal',
    price: '\$700.00',
    descriptionBullets: [
      'This pre-owned product is not Apple certified, but has been professionally inspected, tested and cleaned by Amazon-qualified suppliers.',
      "There will be no visible cosmetic imperfections when held at an arm's length.",
      'This product will have a battery which exceeds 80% capacity relative to new.',
      'Accessories may not be original, but will be compatible and fully functional.',
    ],
  ),
  Product(
    imageUrl: 'assets/jpg/iphone1.png',
    name: 'M4 Macbook Air 13″\n256 GB | Sky blue',
    price: '\$1000.00',
    descriptionBullets: [
      'This pre-owned product is not Apple certified, but has been professionally inspected, tested and cleaned by Amazon-qualified suppliers.',
      "There will be no visible cosmetic imperfections when held at an arm's length.",
      'This product will have a battery which exceeds 80% capacity relative to new.',
      'Accessories may not be original, but will be compatible and fully functional.',
    ],
  ),
  Product(
    imageUrl: 'assets/jpg/iphone1.png',
    name: 'Google Pixel 9A\n128 GB | Iris',
    price: '\$499.00',
    descriptionBullets: [
      'This pre-owned product is not Apple certified, but has been professionally inspected, tested and cleaned by Amazon-qualified suppliers.',
      "There will be no visible cosmetic imperfections when held at an arm's length.",
      'This product will have a battery which exceeds 80% capacity relative to new.',
      'Accessories may not be original, but will be compatible and fully functional.',
    ],
  ),
  Product(
    imageUrl: 'assets/jpg/iphone1.png',
    name: 'Apple Airpods 4\nActive Noise Cancellatio…',
    price: '\$129.00',
    descriptionBullets: [
      'This pre-owned product is not Apple certified, but has been professionally inspected, tested and cleaned by Amazon-qualified suppliers.',
      "There will be no visible cosmetic imperfections when held at an arm's length.",
      'This product will have a battery which exceeds 80% capacity relative to new.',
      'Accessories may not be original, but will be compatible and fully functional.',
    ],
  ),
  Product(
    imageUrl: 'assets/jpg/iphone1.png',
    name: 'Apple iPhone 16\n128 GB | Teal',
    price: '\$700.00',
    descriptionBullets: [
      'This pre-owned product is not Apple certified, but has been professionally inspected, tested and cleaned by Amazon-qualified suppliers.',
      "There will be no visible cosmetic imperfections when held at an arm's length.",
      'This product will have a battery which exceeds 80% capacity relative to new.',
      'Accessories may not be original, but will be compatible and fully functional.',
    ],
  ),
  Product(
    imageUrl: 'assets/jpg/iphone1.png',
    name: 'M4 Macbook Air 13″\n256 GB | Sky blue',
    price: '\$1000.00',
    descriptionBullets: [
      'This pre-owned product is not Apple certified, but has been professionally inspected, tested and cleaned by Amazon-qualified suppliers.',
      "There will be no visible cosmetic imperfections when held at an arm's length.",
      'This product will have a battery which exceeds 80% capacity relative to new.',
      'Accessories may not be original, but will be compatible and fully functional.',
    ],
  ),
  Product(
    imageUrl: 'assets/jpg/iphone1.png',
    name: 'Google Pixel 9A\n128 GB | Iris',
    price: '\$499.00',
    descriptionBullets: [
      'This pre-owned product is not Apple certified, but has been professionally inspected, tested and cleaned by Amazon-qualified suppliers.',
      "There will be no visible cosmetic imperfections when held at an arm's length.",
      'This product will have a battery which exceeds 80% capacity relative to new.',
      'Accessories may not be original, but will be compatible and fully functional.',
    ],
  ),
  Product(
    imageUrl: 'assets/jpg/iphone1.png',
    name: 'Apple Airpods 4\nActive Noise Cancellatio…',
    price: '\$129.00',
    descriptionBullets: [
      'This pre-owned product is not Apple certified, but has been professionally inspected, tested and cleaned by Amazon-qualified suppliers.',
      "There will be no visible cosmetic imperfections when held at an arm's length.",
      'This product will have a battery which exceeds 80% capacity relative to new.',
      'Accessories may not be original, but will be compatible and fully functional.',
    ],
  ),
  Product(
    imageUrl: 'assets/jpg/iphone1.png',
    name: 'Apple iPhone 16\n128 GB | Teal',
    price: '\$700.00',
    descriptionBullets: [
      'This pre-owned product is not Apple certified, but has been professionally inspected, tested and cleaned by Amazon-qualified suppliers.',
      "There will be no visible cosmetic imperfections when held at an arm's length.",
      'This product will have a battery which exceeds 80% capacity relative to new.',
      'Accessories may not be original, but will be compatible and fully functional.',
    ],
  ),
  Product(
    imageUrl: 'assets/jpg/iphone1.png',
    name: 'M4 Macbook Air 13″\n256 GB | Sky blue',
    price: '\$1000.00',
    descriptionBullets: [
      'This pre-owned product is not Apple certified, but has been professionally inspected, tested and cleaned by Amazon-qualified suppliers.',
      "There will be no visible cosmetic imperfections when held at an arm's length.",
      'This product will have a battery which exceeds 80% capacity relative to new.',
      'Accessories may not be original, but will be compatible and fully functional.',
    ],
  ),
  Product(
    imageUrl: 'assets/jpg/iphone1.png',
    name: 'Google Pixel 9A\n128 GB | Iris',
    price: '\$499.00',
    descriptionBullets: [
      'This pre-owned product is not Apple certified, but has been professionally inspected, tested and cleaned by Amazon-qualified suppliers.',
      "There will be no visible cosmetic imperfections when held at an arm's length.",
      'This product will have a battery which exceeds 80% capacity relative to new.',
      'Accessories may not be original, but will be compatible and fully functional.',
    ],
  ),
  Product(
    imageUrl: 'assets/jpg/iphone1.png',
    name: 'Apple Airpods 4\nActive Noise Cancellatio…',
    price: '\$129.00',
    descriptionBullets: [
      'This pre-owned product is not Apple certified, but has been professionally inspected, tested and cleaned by Amazon-qualified suppliers.',
      "There will be no visible cosmetic imperfections when held at an arm's length.",
      'This product will have a battery which exceeds 80% capacity relative to new.',
      'Accessories may not be original, but will be compatible and fully functional.',
    ],
  ),
  Product(
    imageUrl: 'assets/jpg/iphone1.png',
    name: 'Apple iPhone 16\n128 GB | Teal',
    price: '\$700.00',
    descriptionBullets: [
      'This pre-owned product is not Apple certified, but has been professionally inspected, tested and cleaned by Amazon-qualified suppliers.',
      "There will be no visible cosmetic imperfections when held at an arm's length.",
      'This product will have a battery which exceeds 80% capacity relative to new.',
      'Accessories may not be original, but will be compatible and fully functional.',
    ],
  ),
  Product(
    imageUrl: 'assets/jpg/iphone1.png',
    name: 'M4 Macbook Air 13″\n256 GB | Sky blue',
    price: '\$1000.00',
    descriptionBullets: [
      'This pre-owned product is not Apple certified, but has been professionally inspected, tested and cleaned by Amazon-qualified suppliers.',
      "There will be no visible cosmetic imperfections when held at an arm's length.",
      'This product will have a battery which exceeds 80% capacity relative to new.',
      'Accessories may not be original, but will be compatible and fully functional.',
    ],
  ),
  Product(
    imageUrl: 'assets/jpg/iphone1.png',
    name: 'Google Pixel 9A\n128 GB | Iris',
    price: '\$499.00',
    descriptionBullets: [
      'This pre-owned product is not Apple certified, but has been professionally inspected, tested and cleaned by Amazon-qualified suppliers.',
      "There will be no visible cosmetic imperfections when held at an arm's length.",
      'This product will have a battery which exceeds 80% capacity relative to new.',
      'Accessories may not be original, but will be compatible and fully functional.',
    ],
  ),
  Product(
    imageUrl: 'assets/jpg/iphone1.png',
    name: 'Apple Airpods 4\nActive Noise Cancellatio…',
    price: '\$129.00',
    descriptionBullets: [
      'This pre-owned product is not Apple certified, but has been professionally inspected, tested and cleaned by Amazon-qualified suppliers.',
      "There will be no visible cosmetic imperfections when held at an arm's length.",
      'This product will have a battery which exceeds 80% capacity relative to new.',
      'Accessories may not be original, but will be compatible and fully functional.',
    ],
  ),
];
