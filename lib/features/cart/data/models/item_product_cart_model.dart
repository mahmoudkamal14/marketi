class ItemProductCartModel {
  final String name;
  final double price;
  final String photo;
  final double rate;
  final int? count;
  final bool fav;
  final String description;

  ItemProductCartModel({
    required this.name,
    required this.price,
    required this.photo,
    required this.rate,
    required this.count,
    required this.description,
    required this.fav,
  });
}

double totalPrice = 0;

List<ItemProductCartModel> listItemsProductCart = [
  ItemProductCartModel(
    name: 'Pampers Swaddlers',
    price: 345.00,
    rate: 4.9,
    count: 1,
    photo: 'assets/images/Pampers_Seventh_Generation.png',
    fav: false,
    description:
        'Fear no leaks with new and improved Pampers Swaddlers Pampers Swaddlers helps prevent up to 100% of leaks, even blowouts Plus, Dual Leak-Guard Barriers at the legs help protect where leaks happen most With Swaddlers, you can rest assured that you have superior leak protection* while keeping baby’s skin healthy See more  ',
  ),
  ItemProductCartModel(
    name: 'HP Chromebook laptop',
    price: 88.00,
    rate: 3.6,
    count: 2,
    photo: 'assets/images/Laptop_HP_Chromebook_laptop.png',
    fav: true,
    description:
        'Fear no leaks with new and improved Pampers Swaddlers Pampers Swaddlers helps prevent up to 100% of leaks, even blowouts Plus, Dual Leak-Guard Barriers at the legs help protect where leaks happen most With Swaddlers, you can rest assured that you have superior leak protection* while keeping baby’s skin healthy See more  ',
  ),
  ItemProductCartModel(
    name: 'Black Sony Headphone',
    price: 345.00,
    rate: 4.9,
    count: 1,
    photo: 'assets/images/Electronics.png',
    fav: false,
    description:
        'Fear no leaks with new and improved Pampers Swaddlers Pampers Swaddlers helps prevent up to 100% of leaks, even blowouts Plus, Dual Leak-Guard Barriers at the legs help protect where leaks happen most With Swaddlers, you can rest assured that you have superior leak protection* while keeping baby’s skin healthy See more  ',
  ),
  ItemProductCartModel(
    name: 'Black JBL Airbods',
    price: 88.00,
    rate: 3.6,
    count: 2,
    photo: 'assets/images/product.png',
    fav: true,
    description:
        'Fear no leaks with new and improved Pampers Swaddlers Pampers Swaddlers helps prevent up to 100% of leaks, even blowouts Plus, Dual Leak-Guard Barriers at the legs help protect where leaks happen most With Swaddlers, you can rest assured that you have superior leak protection* while keeping baby’s skin healthy See more  ',
  ),
];
