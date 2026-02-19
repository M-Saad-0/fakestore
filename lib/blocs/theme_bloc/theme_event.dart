part of 'theme_bloc.dart';

sealed class ThemeEvent extends Equatable {
  const ThemeEvent();

  @override
  List<Object> get props => [];
}


class ChangeThemeEvent extends ThemeEvent{
  final int themeIndex;
  const ChangeThemeEvent({required this.themeIndex});
  @override
  List<Object> get props => [themeIndex]; 
}

class GetCurrentThemeEvent extends ThemeEvent{}