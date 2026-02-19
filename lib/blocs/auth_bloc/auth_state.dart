part of 'auth_bloc.dart';

sealed class AuthState extends Equatable {
  const AuthState();
  
  @override
  List<Object> get props => [];
}

final class AuthInitial extends AuthState {}
final class AuthLoadingState extends AuthState {}
final class AuthErrorState extends AuthState {final String error; const AuthErrorState({required this.error}); 
@override
List<Object> get props => [error];
}
final class AuthSuccesState extends AuthState {
  final int userId;
  const AuthSuccesState({required this.userId});
  @override
  List<Object> get props => [userId];
}
