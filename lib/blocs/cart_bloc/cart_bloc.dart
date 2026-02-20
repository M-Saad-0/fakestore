import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:fakestore/models/cart_model.dart';
import 'package:fakestore/services/cart_service.dart';

part 'cart_event.dart';
part 'cart_state.dart';

// class CartBloc extends Bloc<CartEvent, CartState> {
//   final CartService cartService;
//   List<CartProductModel> carts = [];
//   CartBloc({required this.cartService}) : super(CartInitial()) {
//     on<FetchCartEvent>((event, emit) async {
//       emit(CartLoadingState());
//       final cartResult = await cartService.getCart(event.userId);
//       if (cartResult.isSuccess) {
//         if(cartResult.value != null && cartResult.value!.isNotEmpty){
//           carts = cartResult.value!.first.products;
//         }else{
//           carts = [];
//         }
//         print(cartResult.value);
//         emit(CartSuccessState(carts: cartResult.value!));
//       } else if (cartResult.isFailed) {
//         emit(CartErrorState(error: cartResult.failure!));
//       }
//     });
//     on<AddToCartEvent>((event, emit) async {
//       await cartService.addToCart(event.userId, event.cartProductModel);
//       carts =
//           carts.map((e) {
//             if (e.productId == event.cartProductModel.productId) {
//               return event.cartProductModel;
//             } else {
//               return e;
//             }
//           }).toList();
//     });
//   }
// }

class CartBloc extends Bloc<CartEvent, CartState> {
  final CartService cartService;
  List<CartProductModel> carts = [];

  CartBloc({required this.cartService}) : super(CartInitial()) {
    on<FetchCartEvent>(_onFetchCart);
    on<AddToCartEvent>(_onAddToCart);
  }

  Future<void> _onFetchCart(
    FetchCartEvent event,
    Emitter<CartState> emit,
  ) async {
    emit(CartLoadingState());

    final result = await cartService.getCart(event.userId);

    if (result.isSuccess) {
      if (result.value == null || result.value!.isEmpty) {
        carts = [];
      } else {
        carts = result.value!.first.products;
      }

      final userCarts = result.value ?? [];

      if (userCarts.isEmpty) {
        emit(CartSuccessState(carts: [])); // empty cart is valid
        return;
      }

      // For simplicity take the newest cart (most apps do this)
      userCarts.sort((a, b) => b.date.compareTo(a.date));
      if (userCarts.first.products.isEmpty) {
        emit(CartSuccessState(carts: [])); // empty cart is valid
        return;
      } else {
        emit(
          CartSuccessState(carts: userCarts.first.products),
        ); // or all if you want multi-cart
        return;
      }
    } else {
      emit(CartErrorState(error: result.failure ?? 'Unknown error'));
    }
  }

  Future<void> _onAddToCart(
    AddToCartEvent event,
    Emitter<CartState> emit,
  ) async {
    // Optional: optimistic add → but for now simple
    final result = await cartService.addToCart(
      event.userId,
      event.cartProductModel,
    );
bool found = false;
    carts = carts.map((e) {
      if (e.productId == event.cartProductModel.productId) {
        found = true;
        return event.cartProductModel;
      } else {
        return e;
      }
    }).toList();
    if(!found){
      carts.add(event.cartProductModel);
    }
    emit(CartSuccessState(carts: carts));

    if (result.isFailed) {
      emit(CartErrorState(error: result.failure ?? 'Add failed'));
      return;
    }

    // After successful add → refetch to get real server state
    // (FakeStore creates new cart → better to refetch)
    // add(FetchCartEvent(userId: event.userId));
  }
}
