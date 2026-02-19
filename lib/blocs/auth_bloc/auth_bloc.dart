import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:fakestore/services/auth_service.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthService authService;
  AuthBloc({required this.authService}) : super(AuthInitial()) {
    on<AuthLoginEvent>((event, emit) async {
      emit(AuthLoadingState());
      final result = await authService.login(
        username: event.username,
        password: event.password,
      );
      if (result.isFailed) {
        emit(AuthErrorState(error: result.failure!));
        return;
      } else if (result.isSuccess) {
        final userId = await authService.getAndStoreUserId(result.value!);
        if(userId ==-1){
        emit(AuthErrorState(error: "Please try again"));
        }
        authService.secureToken(result.value!);
        emit(AuthSuccesState(userId: userId));
      }
    });
    on<AuthLogoutEvent>((event, emit) async{
     await authService.logout();
      emit(AuthInitial());
    });
    on<AuthCheckLoginEvent>((event, emit) async{
      final isloggedIn = await authService.checkifLoggedIn();
      if(isloggedIn==-1){
      emit(AuthInitial());
      }else{
      emit(AuthSuccesState(userId: isloggedIn));        
      }
    });
  }
}
