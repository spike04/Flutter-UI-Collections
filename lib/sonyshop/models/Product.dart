class Product {
  String title;
  String description;
  String img;
  String price;
  String tag;
  bool isBattery;

  Product(this.title, this.description, this.img, this.price, this.tag,
      this.isBattery);
}

List<Product> products = [
  Product(
    "Headphone WH-1000XM3 com Noise Cancelling",
    "is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's",
    "assets/images/sony_1.png",
    "299.99",
    "img1",
    true,
  ),
  Product(
    "Headphone WH-CH700N com Noise Cancelling sem fio CH700N",
    "is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's",
    "assets/images/sony_2.png",
    "399.99",
    "img2",
    true,
  ),
  Product(
    "Headphone Cancelling WF-1000XM3",
    "is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's",
    "assets/images/sony_3.png",
    "159.99",
    "img3",
    true,
  ),
  Product(
    "Headphone WWF-1000XM3",
    "is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's",
    "assets/images/sony_4.png",
    "259.99",
    "img4",
    false,
  ),
  Product(
    "Headphone WWF-1000XM3",
    "is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's",
    "assets/images/sony_5.png",
    "159.99",
    "img5",
    false,
  ),
];
