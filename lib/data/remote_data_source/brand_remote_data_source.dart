import 'dart:convert';

import 'package:ecommerce_app_flutter/core/network/aoi_client.dart';
import 'package:ecommerce_app_flutter/domain/models/brand.dart';

class BrandRemoteDataSource {
  final ApiClient apiClient;
  
  BrandRemoteDataSource({required this.apiClient});
  
  Future<List<Brand>> fetchBrands() async{
    final result = await apiClient.get('api/BrandList');
    final data = (result is Map<String,dynamic> ? result['data'] : result);
    return (data as List).map((json) => Brand.fromJson(json)).toList();

  }
}