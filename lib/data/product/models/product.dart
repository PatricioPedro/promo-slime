// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:promo_ecommerce/domain/product/entities/product.dart';
import 'color.dart';

class ProductModel {
  final String categoryId;
  final List<ProductColorModel> colors;
  final Timestamp createdDate;
  final num discountedPrice;
  final int gender;
  final List<String> images;
  final num price;
  final List<String> sizes;
  final String productId;
  final int salesNumber;
  final String title;

  ProductModel({
    required this.categoryId,
    required this.colors,
    required this.createdDate,
    required this.discountedPrice,
    required this.gender,
    required this.images,
    required this.price,
    required this.sizes,
    required this.productId,
    required this.salesNumber,
    required this.title,
  });

  factory ProductModel.fromMap(Map<String, dynamic> map) {
    return ProductModel(
      categoryId: map['categoryId'] as String? ?? '', // Valor padrão se null
      colors: [], // Se for null, retorna lista vazia
      createdDate: map['createdDate'] as Timestamp? ?? Timestamp.now(), // Valor padrão se null
      discountedPrice: map['discountedPrice'] as num? ?? 0, // Valor padrão se null
      gender: map['gender'] as int? ?? 0, // Valor padrão se null
      images: map['images'] != null
          ? List<String>.from(map['images'].map((e) => e.toString()))
          : [], // Se for null, retorna lista vazia
      price: map['price'] as num? ?? 0, // Valor padrão se null
      sizes: map['sizes'] != null
          ? List<String>.from(map['sizes'].map((e) => e.toString()))
          : [], // Se for null, retorna lista vazia
      productId: map['productId'] as String? ?? '', // Valor padrão se null
      salesNumber: map['salesNumber'] as int? ?? 0, // Valor padrão se null
      title: map['title'] as String? ?? '', // Valor padrão se null
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'categoryId': categoryId,
      'colors': [],
      'createdDate': createdDate,
      'discountedPrice': discountedPrice,
      'gender': gender,
      'images': images.map((e) => e.toString()).toList(),
      'price': price,
      'sizes': sizes.map((e) => e.toString()).toList(),
      'productId': productId,
      'salesNumber': salesNumber,
      'title': title,
    };
  }
}

extension ProductXModel on ProductModel {
  ProductEntity toEntity() {
    return ProductEntity(
      categoryId: categoryId,
      colors: [],
      createdDate: createdDate,
      discountedPrice: discountedPrice,
      gender: gender,
      images: images,
      price: price,
      sizes: sizes,
      productId: productId,
      salesNumber: salesNumber,
      title: title,
    );
  }
}

extension ProductXEntity on ProductEntity {
  ProductModel fromEntity() {
    return ProductModel(
      categoryId: categoryId,
      colors: [],
      createdDate: createdDate,
      discountedPrice: discountedPrice,
      gender: gender,
      images: images,
      price: price,
      sizes: sizes,
      productId: productId,
      salesNumber: salesNumber,
      title: title,
    );
  }
}
