part of 'cart_bloc.dart';

sealed class CartState extends Equatable {
  const CartState();
  
  @override
  List<Object> get props => [];
}

final class CartInitial extends CartState {}
final class CartLoadingState extends CartState {}
final class CartErrorState extends CartState {final String error; const CartErrorState({required this.error}); 
@override
List<Object> get props => [error];
}
final class CartSuccessState extends CartState {
  final List<CartModel> carts;
  const CartSuccessState({required this.carts});
  @override
  List<Object> get props => [carts];
}
