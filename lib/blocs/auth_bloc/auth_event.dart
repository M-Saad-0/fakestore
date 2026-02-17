part of 'auth_bloc.dart';

sealed class AuthEvent extends Equatable {
  const AuthEvent();

  @override
  List<Object> get props => [];
}

class AuthLoginEvent extends AuthEvent{
  final String username;
  final String password;

 const AuthLoginEvent({required this.username, required this.password});
  
  @override
  List<Object> get props => [];
}

class AuthLogoutEvent extends AuthEvent{}