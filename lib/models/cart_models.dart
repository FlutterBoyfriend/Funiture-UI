class CartedProduct {
  final String imgUrl;
  final String name;
  final String price;

  CartedProduct({this.imgUrl, this.name, this.price});
}

CartedProduct chair1 =
    CartedProduct(imgUrl: "images/grey.png", name: "Grey Chair", price: "7,98");

CartedProduct chair2 =
    CartedProduct(imgUrl: "images/gera.png", name: "Gera Chair", price: "5,34");

CartedProduct chair3 =
    CartedProduct(imgUrl: "images/laya.png", name: "Laya Chair", price: "3,28");

List<CartedProduct> allCarted = [chair1, chair2, chair3];
