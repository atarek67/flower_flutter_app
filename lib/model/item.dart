class Item{
  String name;
  String imgPath;
  int price;
  String location;

  Item({required this.name,required this.imgPath, required this.price, this.location = "Main branch"});
}
  List items=[
    Item(name: 'product1',imgPath: 'assets/images/flower2.png', price: 15,location: "Tik's Branch"),
    Item(name: 'product2',imgPath: 'assets/images/flower2.png', price: 10),
    Item(name: 'product3',imgPath: 'assets/images/flower3.png', price: 17),
    Item(name: 'product4',imgPath: 'assets/images/flower4.png', price: 19),
    Item(name: 'product5',imgPath: 'assets/images/flower5.png', price: 11),
    Item(name: 'product6',imgPath: 'assets/images/flower6.png', price: 13),
    Item(name: 'product7',imgPath: 'assets/images/flower7.jpg', price: 18),
    Item(name: 'product8',imgPath: 'assets/images/flower8.png', price: 17),
    Item(name: 'product9',imgPath: 'assets/images/flower4.jpg', price: 12),
  ];

