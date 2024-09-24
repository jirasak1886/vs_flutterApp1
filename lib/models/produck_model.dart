// To parse this JSON data, do
//
//     final usermodel = usermodelFromJson(jsonString);

import 'dart:convert';

Usermodel usermodelFromJson(String str) => Usermodel.fromJson(json.decode(str));

String usermodelToJson(Usermodel data) => json.encode(data.toJson());

class Usermodel {
  final String productName;
  final String productType;
  final String price;
  final String unit;
  final String accessToken;
  final String refreshToken;

  Usermodel({
    required this.productName,
    required this.productType,
    required this.price,
    required this.unit,
    required this.accessToken,
    required this.refreshToken,
  });

  factory Usermodel.fromJson(Map<String, dynamic> json) => Usermodel(
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
