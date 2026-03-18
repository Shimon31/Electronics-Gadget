import 'package:equatable/equatable.dart';

abstract class ProductSliderEvent extends Equatable{

  const ProductSliderEvent();



  @override
  List<Object?> get props => [];

}
class ProductSliderRequested extends ProductSliderEvent{
  const ProductSliderRequested();
}