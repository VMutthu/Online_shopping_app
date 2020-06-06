class Product {
  String id;
  String prodName;
  String prodPrice;
  String prodInfo;
  String prodComapny;
  String prodImg;

  Product(
      {this.id,
      this.prodName,
      this.prodPrice,
      this.prodInfo,
      this.prodComapny,
      this.prodImg});

  Product.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    prodName = json['prod_name'];
    prodPrice = json['prod_price'];
    prodInfo = json['prod_info'];
    prodComapny = json['Prod_comapny'];
    prodImg = json['prod_img'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['prod_name'] = this.prodName;
    data['prod_price'] = this.prodPrice;
    data['prod_info'] = this.prodInfo;
    data['Prod_comapny'] = this.prodComapny;
    data['prod_img'] = this.prodImg;
    return data;
  }
}
