class Chair {
  final String imgUrl;
  final String name;
  final String description;
  final String price;

  Chair({this.imgUrl, this.name, this.description, this.price});
}

Chair chair1 = Chair(
    imgUrl: "images/grey.png",
    name: "Grey Chair",
    description: '''This chair has very soft material and a
good design that makes you feel
happy when you have it ''',
    price: "7,98");

Chair chair2 = Chair(
    imgUrl: "images/mona.png",
    name: "Mona Chair",
    description: '''This chair has very soft material and a
good design that makes you feel
happy when you have it ''',
    price: "6,54");

List<Chair> allChairs = [chair1, chair2];
