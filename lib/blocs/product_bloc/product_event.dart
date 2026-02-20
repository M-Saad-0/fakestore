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
  final String searchTerm;
  const FilterProductsEvent({required this.searchTerm});
  @override
  List<Object> get props => [searchTerm];
}