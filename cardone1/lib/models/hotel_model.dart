class Hotel {
  String imageUrl;
  String name;
  String address;
  int price;

  Hotel({
    required this.imageUrl,
    required this.name,
    required this.address,
    required this.price,
  });
}

final List<Hotel> hotels = [
  Hotel(
    imageUrl: 'assets/images/images/rivercrafting.jpg',
    name: 'River Crafting',
    address: 'Manali',
    price: 1700,
  ),
  Hotel(
    imageUrl: 'assets/images/scuba.jpg',
    name: 'Scuba Diving',
    address: 'Kerala',
    price: 3000,
  ),
  Hotel(
    imageUrl: 'assets/images/paragliding.jpg',
    name: 'Paragliding',
    address: 'Rishikesh',
    price: 5000,
  ),
];
