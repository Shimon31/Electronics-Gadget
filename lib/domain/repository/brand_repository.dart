import 'package:ecommerce_app_flutter/domain/models/brand.dart';

abstract class BrandRepository {
  Future<List<Brand>> getBrand();
}