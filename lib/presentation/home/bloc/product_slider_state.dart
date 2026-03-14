import 'package:ecommerce_app_flutter/domain/models/product_slider.dart';
import 'package:equatable/equatable.dart';

enum ProductSliderStatus { initial, loading, success, failure }

class ProductSliderState extends Equatable {
  final ProductSliderStatus status;
  final List<ProductSlider> sliders;
  final String? errorMessage;

  const ProductSliderState({
    required this.status,
    required this.sliders,
    this.errorMessage,
  });

  // Initial factory
  const ProductSliderState.initial()
      : status = ProductSliderStatus.initial,
        sliders = const [],
        errorMessage = null;

  // CopyWith method
  ProductSliderState copyWith({
    ProductSliderStatus? status,
    List<ProductSlider>? sliders,
    String? errorMessage,
  }) {
    return ProductSliderState(
      status: status ?? this.status,
      sliders: sliders ?? this.sliders,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }

  @override
  List<Object?> get props => [status, sliders, errorMessage];
}
