import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:fakestore/models/cart_model.dart';
import 'package:fakestore/services/cart_service.dart';

part 'cart_event.dart';
part 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  final CartService cartService;
  List<CartProductModel> carts = [];
  CartBloc({required this.cartService}) : super(CartInitial()) {
    on<FetchCartEvent>((event, emit) async{
      emit(CartLoadingState());
      final cartResult = await cartService.getCart(event.userId);
      if(cartResult.isSuccess) {
        carts = cartResult.value!.first.products;
        emit(CartSuccessState(carts: cartResult.value!));
      } else if(cartResult.isFailed) {
        emit(CartErrorState(error: cartResult.failure!));
      }
    });
    on<AddToCartEvent>((event, emit) async {
      await cartService.addToCart(event.userId, event.cartProductModel);
      carts = carts.map((e){
       if(e.productId==event.cartProductModel.productId){
        return event.cartProductModel;
       }else{
        return e;
       }
      }).toList();
    }); 
  }
}
