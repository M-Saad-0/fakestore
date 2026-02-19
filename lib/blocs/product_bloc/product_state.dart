part of 'product_bloc.dart';

sealed class ProductState extends Equatable {
  const ProductState();
  
  @override
  List<Object> get props => [];
}

final class ProductInitialState extends ProductState {}

// 1. Loading State
final class ProductLoadingState extends ProductState {}

// 2. Success State - contains the list of products
final class ProductSuccessState extends ProductState {
  final List<ProductModel> products;

  const ProductSuccessState(this.products);

  @override
  List<Object> get props => [products];
}

// 3. Error State - contains the error message
final class ProductErrorState extends ProductState {
  final String message;

  const ProductErrorState(this.message);

  @override
  List<Object> get props => [message];
}