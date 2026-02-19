import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:fakestore/models/product_model.dart';
import 'package:fakestore/services/product_service.dart';

part 'product_event.dart';
part 'product_state.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final ProductService productService;
  ProductBloc({required this.productService}) : super(ProductInitialState()) {
    on<GetProductsByCategory>((event, emit)async {
      emit(ProductLoadingState());
      final productResult = await productService.getProducts(category:event.category);
         if (productResult.isFailed) {
        emit(ProductErrorState(productResult.failure! ));
        return;
      } else if (productResult.isSuccess) {
        emit(ProductSuccessState(productResult.value!));
      }
    });
    on<FilterProductsEvent>((event, emit) {
      emit(ProductSuccessState(event.products));
    });
  }
}
