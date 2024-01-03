// model

class Item {
  String imgUrl;
  double price;
  String location;

  Item({required this.imgUrl, required this.price, this.location = "hh"});
}

List items = [
  Item(imgUrl: "1.webp", price: 12.99, location: "Cité el Qods"),
  Item(imgUrl: "2.webp", price: 11.00, location: "Annaba"),
  Item(imgUrl: "3.webp", price: 9.01, location: "El bouni"),
  Item(imgUrl: "4.webp", price: 5.99),
  Item(imgUrl: "5.webp", price: 4.99),
  Item(imgUrl: "6.webp", price: 4.99),
  Item(imgUrl: "7.webp", price: 4.99),
  Item(imgUrl: "8.webp", price: 4.99),
];
