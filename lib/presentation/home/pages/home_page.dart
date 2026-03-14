import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../domain/repository/brand_repository.dart';
import '../../../domain/repository/product_repository.dart';
import '../../../domain/repository/product_slider_repository.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
    required this.brandRepository,
    required this.productRepository,
    required this.productSliderRepository,
  });

  final BrandRepository brandRepository;
  final ProductRepository productRepository;
  final ProductSliderRepository productSliderRepository;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers:[
        // BlocProvider(create: create),
        // BlocProvider(create: create),
        // BlocProvider(create: create),
      ],
      child: Scaffold(),
    );
  }
}

