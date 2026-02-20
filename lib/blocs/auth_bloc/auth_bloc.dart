import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:fakestore/models/user_model.dart';
import 'package:fakestore/services/auth_service.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthService authService;
  int? userId;
  AuthBloc({required this.authService}) : super(AuthInitial()) {
    on<AuthLoginEvent>((event, emit) async {
      emit(AuthLoadingState());
      final result = await authService.login(
        username: event.username,
        password: event.password,
      );
      if (result.isFailed) {
        //print("result failed: ${result.failure}");
        emit(AuthErrorState(error: result.failure!));
        return;
      } else if (result.isSuccess) {
        userId = await authService.storeSession(result.value!);
        //print("Stored userId: $userId");
        if (userId == null) {
          emit(AuthErrorState(error: "Failed to store session"));
          return;
        }

        final userResult = await authService.getUserInfo(userId!);
        if (userResult.isFailed) {
          emit(AuthErrorState(error: userResult.failure!));
          return;
        }

        emit(AuthSuccesState(user: userResult.value!));
      }
    });
    on<AuthLogoutEvent>((event, emit) async {
      await authService.logout();
      emit(AuthUnauthenticatedState());
    });
    on<AuthCheckLoginEvent>((event, emit) async {
      final loggedInUser = await authService.checkifLoggedIn();
      if (loggedInUser == null) {
        emit(AuthUnauthenticatedState());
      } else {
        userId = loggedInUser.id;
        emit(AuthSuccesState(user: loggedInUser));
      }
    });
  }
}
