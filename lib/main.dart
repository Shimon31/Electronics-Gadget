import 'package:ecommerce_app_flutter/core/network/aoi_client.dart';
import 'package:ecommerce_app_flutter/data/repository_impl/brand_repo_impl.dart';
import 'package:ecommerce_app_flutter/presentation/home/pages/main_navigation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'data/remote_data_source/brand_remote_data_source.dart';
import 'data/remote_data_source/product_remote_data_source.dart';
import 'data/remote_data_source/product_slider_remote_data_source.dart';
import 'data/repository_impl/product_repository_impl.dart';
import 'data/repository_impl/product_slider_repository_impl.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    final apiClient = ApiClient(
      baseUrl: 'https://ecommerce-api.codesilicon.com', httpClient: null,
    );

    // Initialize data sources
    final brandRemoteDataSource = BrandRemoteDataSource(
        apiClient: apiClient
    );


    final productSliderRemoteDataSource = ProductSliderRemoteDataSource(
      apiClient: apiClient,
    );

    final productRemoteDataSource = ProductRemoteDataSource(
      apiClient: apiClient,
    );

    // Initialize repositories
    final brandRepository = BrandRepoImpl(
      remoteDataSource: brandRemoteDataSource,
    );

    final productSliderRepository = ProductSliderRepositoryImpl(
      remoteDataSource: productSliderRemoteDataSource,
    );
    final productRepository = ProductRepositoryImpl(
      remoteDataSource: productRemoteDataSource,
    );


    return MaterialApp(
      title: "Ecommerce App",
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.blue,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        )
      ),
      home: MainNavigation(
        productRepository: productRepository,
        brandRepository: brandRepository,
        productSliderRepository: productSliderRepository,
      ),
    );
  }

}