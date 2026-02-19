import 'package:fakestore/constants/app_theme.dart'; // ← your themes file
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


// ────────────────────────────────────────────────
// BLoC Setup (kept but simplified a bit)
class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(const ThemeInitial(0)); // start with theme 0

  @override
  Stream<ThemeState> mapEventToState(ThemeEvent event) async* {
    if (event is ChangeThemeEvent) {
      yield ThemeChanged(event.index);
    }
  }
}

abstract class ThemeEvent {
  const ThemeEvent();
}

class ChangeThemeEvent extends ThemeEvent {
  final int index;
  const ChangeThemeEvent(this.index);
}

class ThemeState {
  final int selectedIndex;
  const ThemeState(this.selectedIndex);
}

class ThemeInitial extends ThemeState {
  const ThemeInitial(int index) : super(index);
}

class ThemeChanged extends ThemeState {
  const ThemeChanged(super.selectedIndex);
}

// ────────────────────────────────────────────────
// Theme Preview Page
class ThemeChangePage extends StatelessWidget {
  const ThemeChangePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ThemeBloc(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Choose Your Theme'),
        ),
        body: BlocBuilder<ThemeBloc, ThemeState>(
          builder: (context, state) {
            final currentIndex = state.selectedIndex;

            return Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.all(16),
                    itemCount: themeList.length,
                    itemBuilder: (context, index) {
                      final theme = themeList[index];
                      final isSelected = index == currentIndex;

                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: GestureDetector(
                          onTap: () {
                            context.read<ThemeBloc>().add(ChangeThemeEvent(index));
                            // Optional: apply theme globally here or in a listener
                            // Example: MyApp.themeNotifier.value = theme;
                          },
                          child: AnimatedContainer(
                            duration: const Duration(milliseconds: 300),
                            width: 280,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: isSelected
                                  ? Border.all(color: theme.colorScheme.primary, width: 4)
                                  : null,
                              boxShadow: isSelected
                                  ? [
                                      BoxShadow(
                                        color: theme.colorScheme.primary.withOpacity(0.4),
                                        blurRadius: 16,
                                        spreadRadius: 2,
                                      )
                                    ]
                                  : null,
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(16),
                              child: Theme(
                                data: theme,
                                child: Builder(
                                  builder: (innerContext) {
                                    return Card(
                                      margin: EdgeInsets.zero,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(16),
                                      ),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.stretch,
                                        children: [
                                          // Mini AppBar preview
                                          Container(
                                            padding: const EdgeInsets.symmetric(
                                              horizontal: 16,
                                              vertical: 12,
                                            ),
                                            color: Theme.of(innerContext).appBarTheme.backgroundColor,
                                            child: Row(
                                              children: [
                                                Icon(
                                                  Icons.arrow_back,
                                                  color: Theme.of(innerContext).appBarTheme.foregroundColor,
                                                ),
                                                const SizedBox(width: 16),
                                                Text(
                                                  'Preview',
                                                  style: TextStyle(
                                                    color: Theme.of(innerContext).appBarTheme.foregroundColor,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 18,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),

                                          // Content area
                                          Expanded(
                                            child: Padding(
                                              padding: const EdgeInsets.all(20),
                                              child: Column(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  Icon(
                                                    Icons.palette_outlined,
                                                    size: 64,
                                                    color: Theme.of(innerContext).colorScheme.primary,
                                                  ),
                                                  const SizedBox(height: 16),

                                                  Text(
                                                    'Theme ${index + 1}',
                                                    style: Theme.of(innerContext).textTheme.titleLarge?.copyWith(
                                                      fontWeight: FontWeight.bold,
                                                    ),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                  const SizedBox(height: 8),

                                                  Text(
                                                    'This is how your app could look',
                                                    style:   Theme.of(innerContext).textTheme.bodyMedium,
                                                    textAlign: TextAlign.center,
                                                  ),
                                                  const SizedBox(height: 24),

                                                  ElevatedButton.icon(
                                                    icon: const Icon(Icons.check_circle),
                                                    label: const Text('Select this theme'),
                                                    onPressed: () {
                                                      context.read<ThemeBloc>().add(ChangeThemeEvent(index));
                                                      // Here you would normally save / apply the theme globally
                                                    },
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),

                // Optional: show current selection info at bottom
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Text(
                    'Current Theme: ${currentIndex + 1}',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}