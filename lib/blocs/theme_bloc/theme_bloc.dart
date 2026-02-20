import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

part 'theme_event.dart';
part 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  final int themeIndex = 0;
  final FlutterSecureStorage secureStorage = const FlutterSecureStorage();
  ThemeBloc() : super(ThemeInitial()) {
    on<GetCurrentThemeEvent>((event, emit) async {
      final themeIndexStr =
          await secureStorage.read(key: 'themeIndex') ?? 0.toString();
      print("Retrieved theme index from storage: $themeIndexStr");
      final themeIndex = int.parse(themeIndexStr);
      emit(ThemeChangeState(themeIndex: themeIndex));
    });

    on<ChangeThemeEvent>((event, emit) {
      themeIndex == event.themeIndex;
      secureStorage.write(
        key: 'themeIndex',
        value: event.themeIndex.toString(),
      );
      emit(ThemeChangeState(themeIndex: event.themeIndex));
    });
  }
}
