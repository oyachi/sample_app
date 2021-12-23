class Product {
  Product({
    required this.name,
    required this.description,
    required this.price,
    required this.imageUrl
  });

  String name;
  String description;
  double price;
  String imageUrl;
}

final List<Product> products = [
  Product(
    name: 'Macbook Pro 13-inch (2019)',
    description: 'hogehoge',
    price: 1199.99,
    imageUrl: 'assets/images/macbookpro.jpg',
  ),
  Product(
    name: 'Apple Magic Keyboard',
    description: 'hogehoge',
    price: 88.99,
    imageUrl: 'assets/images/keyboard.jpg',
  ),
  Product(
    name: 'Logitech Mx Master 25',
    description: 'hogehoge',
    price: 79.95,
    imageUrl: 'assets/images/mxmaster.jpg',
  ),
  Product(
    name: 'Blue Yeti USB Microphone',
    description: 'hogehoge',
    price: 109.99,
    imageUrl: 'assets/images/blueyeti.jpg',
  ),
  Product(
    name: 'JBL Bluetooth Speaker',
    description: 'hogehoge',
    price: 99.95,
    imageUrl: 'assets/images/jbl.jpg',
  ),
];