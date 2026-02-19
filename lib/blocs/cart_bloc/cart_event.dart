part of 'cart_bloc.dart';

sealed class CartEvent extends Equatable {
  const CartEvent();

  @override
  List<Object> get props => [];
}

final class FetchCartEvent extends CartEvent {
  final int userId;
  const FetchCartEvent({required this.userId});
  @override
  List<Object> get props => [userId];
}
final class AddToCartEvent extends CartEvent {
  final int userId;
  final CartProductModel cartProductModel;
  const AddToCartEvent({required this.userId, required this.cartProductModel});
  @override
  List<Object> get props => [userId, cartProductModel];
}
