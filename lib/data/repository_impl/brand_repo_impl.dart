import 'package:ecommerce_app_flutter/data/remote_data_source/brand_remote_data_source.dart';
import 'package:ecommerce_app_flutter/domain/models/brand.dart';
import 'package:ecommerce_app_flutter/domain/repository/brand_repository.dart';

class BrandRepoImpl implements BrandRepository{

  final BrandRemoteDataSource remoteDataSource;

  BrandRepoImpl({required this.remoteDataSource});
  @override
  Future<List<Brand>> getBrand() {
    return remoteDataSource.fetchBrands();
  }

}