import 'package:ecommerce_app_flutter/domain/models/product_slider.dart';

abstract class ProductSliderRepository {
  Future<List<ProductSlider>> getProductSliders();
}