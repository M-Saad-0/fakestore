part of 'product_bloc.dart';

sealed class ProductEvent extends Equatable {
  const ProductEvent();

  @override
  List<Object> get props => [];
}


class GetProductsByCategory extends ProductEvent{
  final String category;
  const GetProductsByCategory({this.category="All"});
  @override
  List<Object> get props => [category];
}

class FilterProductsEvent extends ProductEvent{
  final List<ProductModel> products;
  const FilterProductsEvent({required this.products});
  @override
  List<Object> get props => [products];
}