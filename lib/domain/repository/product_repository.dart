import 'package:ecommerce_app_flutter/domain/models/product.dart';

abstract class ProductRepository {
  Future<List<Product>> getProductsByBrand(int brandId);
}