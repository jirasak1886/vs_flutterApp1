// To parse this JSON data, do
//
//     final usermodel = usermodelFromJson(jsonString);

import 'dart:convert';

Productmodel usermodelFromJson(String str) =>
    Productmodel.fromJson(json.decode(str));

String usermodelToJson(Productmodel data) => json.encode(data.toJson());

class Productmodel {
  final String productName;
  final String productType;
  final String price;
  final String unit;
  final String accessToken;
  final String refreshToken;

  Productmodel({
    required this.productName,
    required this.productType,
    required this.price,
    required this.unit,
    required this.accessToken,
    required this.refreshToken,
  });

  factory Productmodel.fromJson(Map<String, dynamic> json) => Productmodel(
        productName: json["product_name"],
        productType: json["product_type"],
        price: json["price"],
        unit: json["unit"],
        accessToken: json["accessToken"],
        refreshToken: json["refreshToken"],
      );

  Map<String, dynamic> toJson() => {
        "product_name": productName,
        "product_type": productType,
        "price": price,
        "unit": unit,
        "accessToken": accessToken,
        "refreshToken": refreshToken,
      };
}
