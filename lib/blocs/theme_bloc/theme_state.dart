part of 'theme_bloc.dart';

sealed class ThemeState extends Equatable {
  const ThemeState();
  
  @override
  List<Object> get props => [];
}

final class ThemeInitial extends ThemeState {}
final class ThemeChangeState extends ThemeState {
  final int themeIndex;
  const ThemeChangeState({required this.themeIndex});
  @override
  List<Object> get props => [themeIndex];
}
