import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:fakestore/models/product_model.dart';
import 'package:fakestore/services/product_service.dart';

part 'product_event.dart';
part 'product_state.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  List<ProductModel> allProducts = <ProductModel>[];
  final ProductService productService;
  ProductBloc({required this.productService}) : super(ProductInitialState()) {
    on<GetProductsByCategory>((event, emit) async {
      emit(ProductLoadingState());
      final productResult = await productService.getProducts(
        category: event.category,
      );
      if (productResult.isFailed) {
        emit(ProductErrorState(productResult.failure!));
        return;
      } else if (productResult.isSuccess) {
        allProducts = productResult.value!;
        emit(ProductSuccessState(productResult.value!));
      }
    });
    on<FilterProductsEvent>((event, emit) {
      if (event.searchTerm.isEmpty) {
        emit(ProductSuccessState(allProducts));
        return;
      }
      emit(
        ProductSuccessState(
          allProducts
              .where(
                (product) =>
                    product.title.toLowerCase().contains(
                      event.searchTerm.toLowerCase(),
                    ) ||
                    product.category.toLowerCase().contains(
                      event.searchTerm.toLowerCase(),
                    ) ||
                    product.description.toLowerCase().contains(
                      event.searchTerm.toLowerCase(),
                    ),
              )
              .toList(),
        ),
      );
    });
  }
}
