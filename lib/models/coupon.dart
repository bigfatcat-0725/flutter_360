class Coupon {
  String imgUrl;
  String name;
  int price;

  Coupon({
    required this.imgUrl,
    required this.name,
    required this.price,
  });
}

List<Coupon> couponList = [
  Coupon(
    imgUrl:
        'https://cdn.ppomppu.co.kr/zboard/data3/2019/0312/20190312111345_ykcmfvuf.png',
    name: '10% Coupon',
    price: 5,
  ),
  Coupon(
    imgUrl:
        'https://cdn.ppomppu.co.kr/zboard/data3/2019/0312/20190312111345_ykcmfvuf.png',
    name: '20% Coupon',
    price: 10,
  ),
  Coupon(
    imgUrl:
        'https://cdn.ppomppu.co.kr/zboard/data3/2019/0312/20190312111345_ykcmfvuf.png',
    name: '30% Coupon',
    price: 15,
  ),
  Coupon(
    imgUrl:
        'https://cdn.ppomppu.co.kr/zboard/data3/2019/0312/20190312111345_ykcmfvuf.png',
    name: '40% Coupon',
    price: 20,
  ),
  Coupon(
    imgUrl:
        'https://cdn.ppomppu.co.kr/zboard/data3/2019/0312/20190312111345_ykcmfvuf.png',
    name: '50% Coupon',
    price: 25,
  ),
];
