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
        emit(AuthErrorState());
        return;
      } else if (result.isSuccess) {
        authService.secureToken(result.success!);
        emit(AuthSuccesState());
      }
    });
    on<AuthLogoutEvent>((event, emit) {
      authService.logout();
      emit(AuthInitial());
    });
  }
}
