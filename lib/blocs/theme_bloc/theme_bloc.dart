import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

part 'theme_event.dart';
part 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  final int themeIndex = 0;
  ThemeBloc() : super(ThemeInitial()) {
    on<GetCurrentThemeEvent>((event, emit) async {
      await getCurrentTheme(event, emit);
    });

    on<ChangeThemeEvent>((event, emit) {
      themeIndex == event.themeIndex;
      FlutterSecureStorage().write(
        key: 'themeIndex',
        value: event.themeIndex.toString(),
      );
      emit(ThemeChangeState(themeIndex: event.themeIndex));
    });
  }
  Future<void> getCurrentTheme(
    GetCurrentThemeEvent event,
    Emitter<ThemeState> emit,
  ) async {
    final themeIndexStr = await FlutterSecureStorage().read(key: 'themeIndex');
    if (themeIndexStr != null) {
      final themeIndex = int.parse(themeIndexStr);
      emit(ThemeChangeState(themeIndex: themeIndex));
    }
  }
}
