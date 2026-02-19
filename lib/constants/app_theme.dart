import 'package:flutter/material.dart';

/// ────────────────────────────────────────────────
/// WARM BEIGE LIGHT THEME (placed first as requested)
final ThemeData warmBeigeLightTheme = ThemeData(
  useMaterial3: true,
  brightness: Brightness.light,
  scaffoldBackgroundColor: const Color(0xFFF8F2EA),

  colorScheme: ColorScheme.fromSeed(
    seedColor: const Color(0xFF5C3A2A),
    brightness: Brightness.light,
    primary: const Color(0xFF5C3A2A),
    onPrimary: Colors.white,
    secondary: const Color(0xFFCF9D7B),
    onSecondary: const Color(0xFF0C1519),
    tertiary: const Color(0xFF8B7355),
    surface: const Color(0xFFFFFBF7),
    onSurface: const Color(0xFF2A1E16),
    surfaceVariant: const Color(0xFFE3D0C2),
    onSurfaceVariant: const Color(0xFF4A3A30),
    outline: const Color(0xFF9A8170),
  ),

  textTheme: const TextTheme(
    displayLarge: TextStyle(color: Color(0xFF5C3A2A), fontWeight: FontWeight.bold),
    displayMedium: TextStyle(color: Color(0xFF5C3A2A)),
    titleLarge: TextStyle(color: Color(0xFF2A1E16), fontWeight: FontWeight.w600),
    bodyLarge: TextStyle(color: Color(0xFF2A1E16), fontSize: 16),
    bodyMedium: TextStyle(color: Color(0xFF4A3A30), fontSize: 14),
    labelLarge: TextStyle(color: Color(0xFF5C3A2A)),
    labelMedium: TextStyle(color: Color(0xFF4A3A30)),
  ),

  iconTheme: const IconThemeData(color: Color(0xFF5C3A2A)),
  primaryIconTheme: const IconThemeData(color: Colors.white),

  appBarTheme: const AppBarTheme(
    backgroundColor: Color(0xFFF8F2EA),
    foregroundColor: Color(0xFF5C3A2A),
    elevation: 0,
    centerTitle: true,
    scrolledUnderElevation: 3,
  ),

  cardTheme: CardThemeData(
    color: const Color(0xFFFFFBF7),
    elevation: 2,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
  ),

  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: const Color(0xFF5C3A2A),
      foregroundColor: Colors.white,
      elevation: 1,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
    ),
  ),

  filledButtonTheme: FilledButtonThemeData(
    style: FilledButton.styleFrom(
      backgroundColor: const Color(0xFFCF9D7B),
      foregroundColor: const Color(0xFF0C1519),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    ),
  ),

  outlinedButtonTheme: OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: const Color(0xFF5C3A2A),
      side: const BorderSide(color: Color(0xFF5C3A2A)),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    ),
  ),

  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(foregroundColor: const Color(0xFFCF9D7B)),
  ),

  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: const Color(0xFFFFFFF5),
    labelStyle: const TextStyle(color: Color(0xFF5C3A2A)),
    hintStyle: TextStyle(color: Colors.grey.shade600),
    border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: Color(0xFFD9C2B0)),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: Color(0xFF5C3A2A), width: 2),
    ),
  ),

  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: Color(0xFFCF9D7B),
    foregroundColor: Color(0xFF0C1519),
    elevation: 6,
    shape: CircleBorder(),
  ),

  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: Color(0xFFFFFBF7),
    selectedItemColor: Color(0xFF5C3A2A),
    unselectedItemColor: Color(0xFF8B7355),
    selectedLabelStyle: TextStyle(fontWeight: FontWeight.w600),
  ),

  navigationBarTheme: NavigationBarThemeData(
    backgroundColor: const Color(0xFFFFFBF7),
    indicatorColor: const Color(0xFFE3D0C2).withOpacity(0.4),
    labelTextStyle: WidgetStateProperty.all(
      const TextStyle(color: Color(0xFF5C3A2A), fontWeight: FontWeight.w500),
    ),
  ),

  switchTheme: SwitchThemeData(
    thumbColor: WidgetStateProperty.resolveWith((states) =>
        states.contains(WidgetState.selected) ? const Color(0xFF5C3A2A) : null),
    trackColor: WidgetStateProperty.resolveWith((states) =>
        states.contains(WidgetState.selected) ? const Color(0xFFCF9D7B) : null),
  ),

  checkboxTheme: CheckboxThemeData(
    fillColor: WidgetStateProperty.resolveWith((states) =>
        states.contains(WidgetState.selected) ? const Color(0xFF5C3A2A) : null),
  ),

  radioTheme: RadioThemeData(
    fillColor: WidgetStateProperty.resolveWith((states) =>
        states.contains(WidgetState.selected) ? const Color(0xFF5C3A2A) : null),
  ),

  dialogTheme: DialogThemeData(
    backgroundColor: const Color(0xFFFFFBF7),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(28)),
    titleTextStyle: const TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.bold,
      color: Color(0xFF5C3A2A),
    ),
  ),

  snackBarTheme: SnackBarThemeData(
    backgroundColor: const Color(0xFF5C3A2A),
    contentTextStyle: const TextStyle(color: Colors.white),
    actionTextColor: const Color(0xFFCF9D7B),
  ),

  listTileTheme: ListTileThemeData(
    textColor: const Color(0xFF2A1E16),
    iconColor: const Color(0xFF5C3A2A),
    selectedTileColor: const Color(0xFFE3D0C2),
  ),

  dividerTheme: const DividerThemeData(
    color: Color(0xFFD9C2B0),
    thickness: 1,
  ),

  chipTheme: ChipThemeData(
    backgroundColor: const Color(0xFFE3D0C2),
    labelStyle: const TextStyle(color: Color(0xFF2A1E16)),
    selectedColor: const Color(0xFF5C3A2A),
    checkmarkColor: Colors.white,
  ),

  tabBarTheme: TabBarThemeData(
    labelColor: const Color(0xFF5C3A2A),
    unselectedLabelColor: Colors.grey.shade700,
    indicator: const UnderlineTabIndicator(
      borderSide: BorderSide(color: Color(0xFF5C3A2A), width: 4),
    ),
  ),

  progressIndicatorTheme: const ProgressIndicatorThemeData(
    color: Color(0xFF5C3A2A),
    circularTrackColor: Color(0xFFE3D0C2),
  ),

  popupMenuTheme: PopupMenuThemeData(
    color: const Color(0xFFFFFBF7),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
  ),
);

/// ────────────────────────────────────────────────
/// CHINESE BLACK THEME
final ThemeData chineseBlackTheme = ThemeData(
  useMaterial3: true,
  brightness: Brightness.dark,
  scaffoldBackgroundColor: const Color(0xFF0C1519),

  colorScheme: ColorScheme.fromSeed(
    seedColor: const Color(0xFFCF9D7B),
    brightness: Brightness.dark,
    primary: const Color(0xFFCF9D7B),
    onPrimary: const Color(0xFF0C1519),
    secondary: const Color(0xFF724B39),
    surface: const Color(0xFF162127),
    onSurface: const Color(0xFFE0C9B5),
    surfaceVariant: const Color(0xFF2A3C45),
    outline: const Color(0xFF8B7355),
  ),

  textTheme: const TextTheme(
    displayLarge: TextStyle(color: Color(0xFFCF9D7B), fontWeight: FontWeight.bold),
    bodyLarge: TextStyle(color: Color(0xFFE0C9B5), fontSize: 16),
    bodyMedium: TextStyle(color: Colors.white70, fontSize: 14),
    labelLarge: TextStyle(color: Color(0xFFCF9D7B)),
  ),

  iconTheme: const IconThemeData(color: Color(0xFFCF9D7B)),
  primaryIconTheme: const IconThemeData(color: Color(0xFF0C1519)),

  appBarTheme: const AppBarTheme(
    backgroundColor: Color(0xFF0C1519),
    foregroundColor: Color(0xFFCF9D7B),
    elevation: 0,
    centerTitle: true,
  ),

  cardTheme: CardThemeData(
    color: const Color(0xFF162127),
    elevation: 3,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
  ),

  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: const Color(0xFFCF9D7B),
      foregroundColor: const Color(0xFF0C1519),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    ),
  ),

  filledButtonTheme: FilledButtonThemeData(
    style: FilledButton.styleFrom(
      backgroundColor: const Color(0xFF724B39),
      foregroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    ),
  ),

  outlinedButtonTheme: OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: const Color(0xFFCF9D7B),
      side: const BorderSide(color: Color(0xFFCF9D7B)),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    ),
  ),

  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(foregroundColor: const Color(0xFFCF9D7B)),
  ),

  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: const Color(0xFF162127),
    labelStyle: const TextStyle(color: Color(0xFFCF9D7B)),
    border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: Color(0xFF3A3534)),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: Color(0xFFCF9D7B), width: 2),
    ),
  ),

  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: Color(0xFFCF9D7B),
    foregroundColor: Color(0xFF0C1519),
    elevation: 6,
  ),

  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: Color(0xFF0C1519),
    selectedItemColor: Color(0xFFCF9D7B),
    unselectedItemColor: Colors.white54,
  ),

  navigationBarTheme: NavigationBarThemeData(
    backgroundColor: const Color(0xFF0C1519),
    indicatorColor: const Color(0xFFCF9D7B).withOpacity(0.3),
  ),

  switchTheme: SwitchThemeData(
    thumbColor: WidgetStateProperty.resolveWith((states) =>
        states.contains(WidgetState.selected) ? const Color(0xFFCF9D7B) : null),
    trackColor: WidgetStateProperty.resolveWith((states) =>
        states.contains(WidgetState.selected) ? const Color(0xFF724B39) : null),
  ),

  checkboxTheme: CheckboxThemeData(
    fillColor: WidgetStateProperty.resolveWith((states) =>
        states.contains(WidgetState.selected) ? const Color(0xFFCF9D7B) : null),
  ),

  radioTheme: RadioThemeData(
    fillColor: WidgetStateProperty.resolveWith((states) =>
        states.contains(WidgetState.selected) ? const Color(0xFFCF9D7B) : null),
  ),

  dialogTheme: DialogThemeData(
    backgroundColor: const Color(0xFF0C1519),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(28),
      side: const BorderSide(color: Color(0xFFCF9D7B), width: 1),
    ),
  ),

  snackBarTheme: SnackBarThemeData(
    backgroundColor: const Color(0xFFCF9D7B),
    contentTextStyle: const TextStyle(color: Color(0xFF0C1519)),
  ),

  listTileTheme: ListTileThemeData(
    textColor: const Color(0xFFE0C9B5),
    iconColor: const Color(0xFFCF9D7B),
    selectedTileColor: const Color(0xFF2A3C45),
  ),

  dividerTheme: const DividerThemeData(color: Color(0xFF3A3534), thickness: 1),

  chipTheme: ChipThemeData(
    backgroundColor: const Color(0xFF2A3C45),
    labelStyle: const TextStyle(color: Color(0xFFE0C9B5)),
    selectedColor: const Color(0xFFCF9D7B),
  ),

  tabBarTheme: TabBarThemeData(
    labelColor: const Color(0xFFCF9D7B),
    unselectedLabelColor: Colors.white70,
    indicator: const UnderlineTabIndicator(
      borderSide: BorderSide(color: Color(0xFFCF9D7B), width: 4),
    ),
  ),

  progressIndicatorTheme: const ProgressIndicatorThemeData(
    color: Color(0xFFCF9D7B),
  ),

  popupMenuTheme: PopupMenuThemeData(
    color: const Color(0xFF162127),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
  ),
);

/// ────────────────────────────────────────────────
/// DARK JUNGLE GREEN THEME
final ThemeData darkJungleGreenTheme = ThemeData(
  useMaterial3: true,
  brightness: Brightness.dark,
  scaffoldBackgroundColor: const Color(0xFF162127),

  colorScheme: ColorScheme.fromSeed(
    seedColor: const Color(0xFFCF9D7B),
    brightness: Brightness.dark,
    primary: const Color(0xFFCF9D7B),
    onPrimary: const Color(0xFF0C1519),
    secondary: const Color(0xFF724B39),
    surface: const Color(0xFF1F2B32),
    onSurface: const Color(0xFFE0C9B5),
    surfaceVariant: const Color(0xFF2F3F47),
    outline: const Color(0xFF8B7355),
  ),

  textTheme: const TextTheme(
    displayLarge: TextStyle(color: Color(0xFFCF9D7B), fontWeight: FontWeight.bold),
    bodyLarge: TextStyle(color: Colors.white, fontSize: 16),
    bodyMedium: TextStyle(color: Color(0xFFCF9D7B), fontSize: 14),
  ),

  iconTheme: const IconThemeData(color: Color(0xFFCF9D7B)),
  primaryIconTheme: const IconThemeData(color: Color(0xFF0C1519)),

  appBarTheme: const AppBarTheme(
    backgroundColor: Color(0xFF162127),
    foregroundColor: Color(0xFFCF9D7B),
    elevation: 0,
  ),

  cardTheme: CardThemeData(
    color: const Color(0xFF1F2B32),
    elevation: 3,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
  ),

  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: const Color(0xFFCF9D7B),
      foregroundColor: const Color(0xFF0C1519),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    ),
  ),

  filledButtonTheme: FilledButtonThemeData(
    style: FilledButton.styleFrom(
      backgroundColor: const Color(0xFF724B39),
      foregroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    ),
  ),

  outlinedButtonTheme: OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: const Color(0xFFCF9D7B),
      side: const BorderSide(color: Color(0xFFCF9D7B)),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    ),
  ),

  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(foregroundColor: const Color(0xFFCF9D7B)),
  ),

  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: const Color(0xFF1F2B32),
    labelStyle: const TextStyle(color: Color(0xFFCF9D7B)),
    border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: Color(0xFF3A3534)),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: Color(0xFFCF9D7B), width: 2),
    ),
  ),

  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: Color(0xFFCF9D7B),
    foregroundColor: Color(0xFF0C1519),
    elevation: 6,
  ),

  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: Color(0xFF162127),
    selectedItemColor: Color(0xFFCF9D7B),
    unselectedItemColor: Colors.white54,
  ),

  navigationBarTheme: NavigationBarThemeData(
    backgroundColor: const Color(0xFF162127),
    indicatorColor: const Color(0xFFCF9D7B).withOpacity(0.3),
  ),

  switchTheme: SwitchThemeData(
    thumbColor: WidgetStateProperty.resolveWith((states) =>
        states.contains(WidgetState.selected) ? const Color(0xFFCF9D7B) : null),
    trackColor: WidgetStateProperty.resolveWith((states) =>
        states.contains(WidgetState.selected) ? const Color(0xFF724B39) : null),
  ),

  checkboxTheme: CheckboxThemeData(
    fillColor: WidgetStateProperty.resolveWith((states) =>
        states.contains(WidgetState.selected) ? const Color(0xFFCF9D7B) : null),
  ),

  radioTheme: RadioThemeData(
    fillColor: WidgetStateProperty.resolveWith((states) =>
        states.contains(WidgetState.selected) ? const Color(0xFFCF9D7B) : null),
  ),

  dialogTheme: DialogThemeData(
    backgroundColor: const Color(0xFF162127),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(28),
      side: const BorderSide(color: Color(0xFFCF9D7B), width: 1),
    ),
  ),

  snackBarTheme: SnackBarThemeData(
    backgroundColor: const Color(0xFFCF9D7B),
    contentTextStyle: const TextStyle(color: Color(0xFF0C1519)),
  ),

  listTileTheme: ListTileThemeData(
    textColor: const Color(0xFFE0C9B5),
    iconColor: const Color(0xFFCF9D7B),
    selectedTileColor: const Color(0xFF2F3F47),
  ),

  dividerTheme: const DividerThemeData(color: Color(0xFF3A3534), thickness: 1),

  chipTheme: ChipThemeData(
    backgroundColor: const Color(0xFF2F3F47),
    labelStyle: const TextStyle(color: Color(0xFFE0C9B5)),
    selectedColor: const Color(0xFFCF9D7B),
  ),

  tabBarTheme: TabBarThemeData(
    labelColor: const Color(0xFFCF9D7B),
    unselectedLabelColor: Colors.white70,
    indicator: const UnderlineTabIndicator(
      borderSide: BorderSide(color: Color(0xFFCF9D7B), width: 4),
    ),
  ),

  progressIndicatorTheme: const ProgressIndicatorThemeData(
    color: Color(0xFFCF9D7B),
  ),

  popupMenuTheme: PopupMenuThemeData(
    color: const Color(0xFF1F2B32),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
  ),
);

/// ────────────────────────────────────────────────
/// JET THEME
final ThemeData jetTheme = ThemeData(
  useMaterial3: true,
  brightness: Brightness.dark,
  scaffoldBackgroundColor: const Color(0xFF2A2A2A),

  colorScheme: ColorScheme.fromSeed(
    seedColor: const Color(0xFFCF9D7B),
    brightness: Brightness.dark,
    primary: const Color(0xFFCF9D7B),
    onPrimary: const Color(0xFF1A1A1A),
    secondary: const Color(0xFF724B39),
    surface: const Color(0xFF353535),
    onSurface: const Color(0xFFE0C9B5),
    surfaceVariant: const Color(0xFF454545),
    outline: const Color(0xFF777777),
  ),

  textTheme: const TextTheme(
    displayLarge: TextStyle(color: Color(0xFFCF9D7B), fontWeight: FontWeight.bold),
    bodyLarge: TextStyle(color: Colors.white, fontSize: 16),
    bodyMedium: TextStyle(color: Color(0xFFCF9D7B), fontSize: 14),
  ),

  iconTheme: const IconThemeData(color: Color(0xFFCF9D7B)),
  primaryIconTheme: const IconThemeData(color: Color(0xFF1A1A1A)),

  appBarTheme: const AppBarTheme(
    backgroundColor: Color(0xFF2A2A2A),
    foregroundColor: Color(0xFFCF9D7B),
    elevation: 0,
  ),

  cardTheme: CardThemeData(
    color: const Color(0xFF353535),
    elevation: 2,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
  ),

  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: const Color(0xFFCF9D7B),
      foregroundColor: const Color(0xFF1A1A1A),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    ),
  ),

  filledButtonTheme: FilledButtonThemeData(
    style: FilledButton.styleFrom(
      backgroundColor: const Color(0xFF724B39),
      foregroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    ),
  ),

  outlinedButtonTheme: OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: const Color(0xFFCF9D7B),
      side: const BorderSide(color: Color(0xFFCF9D7B)),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    ),
  ),

  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(foregroundColor: const Color(0xFFCF9D7B)),
  ),

  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: const Color(0xFF353535),
    labelStyle: const TextStyle(color: Color(0xFFCF9D7B)),
    border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: Color(0xFF555555)),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: Color(0xFFCF9D7B), width: 2),
    ),
  ),

  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: Color(0xFFCF9D7B),
    foregroundColor: Color(0xFF1A1A1A),
    elevation: 6,
  ),

  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: Color(0xFF2A2A2A),
    selectedItemColor: Color(0xFFCF9D7B),
    unselectedItemColor: Colors.white54,
  ),

  navigationBarTheme: NavigationBarThemeData(
    backgroundColor: const Color(0xFF2A2A2A),
    indicatorColor: const Color(0xFFCF9D7B).withOpacity(0.3),
  ),

  switchTheme: SwitchThemeData(
    thumbColor: WidgetStateProperty.resolveWith((states) =>
        states.contains(WidgetState.selected) ? const Color(0xFFCF9D7B) : null),
    trackColor: WidgetStateProperty.resolveWith((states) =>
        states.contains(WidgetState.selected) ? const Color(0xFF724B39) : null),
  ),

  checkboxTheme: CheckboxThemeData(
    fillColor: WidgetStateProperty.resolveWith((states) =>
        states.contains(WidgetState.selected) ? const Color(0xFFCF9D7B) : null),
  ),

  radioTheme: RadioThemeData(
    fillColor: WidgetStateProperty.resolveWith((states) =>
        states.contains(WidgetState.selected) ? const Color(0xFFCF9D7B) : null),
  ),

  dialogTheme: DialogThemeData(
    backgroundColor: const Color(0xFF2A2A2A),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(28),
      side: const BorderSide(color: Color(0xFFCF9D7B), width: 1),
    ),
  ),

  snackBarTheme: SnackBarThemeData(
    backgroundColor: const Color(0xFFCF9D7B),
    contentTextStyle: const TextStyle(color: Color(0xFF1A1A1A)),
  ),

  listTileTheme: ListTileThemeData(
    textColor: const Color(0xFFE0C9B5),
    iconColor: const Color(0xFFCF9D7B),
    selectedTileColor: const Color(0xFF454545),
  ),

  dividerTheme: const DividerThemeData(color: Color(0xFF555555), thickness: 1),

  chipTheme: ChipThemeData(
    backgroundColor: const Color(0xFF454545),
    labelStyle: const TextStyle(color: Color(0xFFE0C9B5)),
    selectedColor: const Color(0xFFCF9D7B),
  ),

  tabBarTheme: TabBarThemeData(
    labelColor: const Color(0xFFCF9D7B),
    unselectedLabelColor: Colors.white70,
    indicator: const UnderlineTabIndicator(
      borderSide: BorderSide(color: Color(0xFFCF9D7B), width: 4),
    ),
  ),

  progressIndicatorTheme: const ProgressIndicatorThemeData(
    color: Color(0xFFCF9D7B),
  ),

  popupMenuTheme: PopupMenuThemeData(
    color: const Color(0xFF353535),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
  ),
);

/// ────────────────────────────────────────────────
/// COFFEE THEME
final ThemeData coffeeTheme = ThemeData(
  useMaterial3: true,
  brightness: Brightness.dark,
  scaffoldBackgroundColor: const Color(0xFF6B4132),

  colorScheme: ColorScheme.fromSeed(
    seedColor: const Color(0xFFCF9D7B),
    brightness: Brightness.dark,
    primary: const Color(0xFFCF9D7B),
    onPrimary: const Color(0xFF0C1519),
    secondary: const Color(0xFF3A2218),
    surface: const Color(0xFF5D3D2E),
    onSurface: const Color(0xFFE0C9B5),
    surfaceVariant: const Color(0xFF7A5545),
    outline: const Color(0xFF9A8170),
  ),

  textTheme: const TextTheme(
    displayLarge: TextStyle(color: Color(0xFFCF9D7B), fontWeight: FontWeight.bold),
    bodyLarge: TextStyle(color: Color(0xFFCF9D7B), fontSize: 16),
    bodyMedium: TextStyle(color: Colors.white70, fontSize: 14),
  ),

  iconTheme: const IconThemeData(color: Color(0xFFCF9D7B)),
  primaryIconTheme: const IconThemeData(color: Color(0xFF0C1519)),

  appBarTheme: const AppBarTheme(
    backgroundColor: Color(0xFF6B4132),
    foregroundColor: Color(0xFFCF9D7B),
    elevation: 0,
  ),

  cardTheme: CardThemeData(
    color: const Color(0xFF5D3D2E),
    elevation: 3,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
  ),

  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: const Color(0xFF3A2218),
      foregroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    ),
  ),

  filledButtonTheme: FilledButtonThemeData(
    style: FilledButton.styleFrom(
      backgroundColor: const Color(0xFFCF9D7B),
      foregroundColor: const Color(0xFF0C1519),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    ),
  ),

  outlinedButtonTheme: OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: const Color(0xFFCF9D7B),
      side: const BorderSide(color: Color(0xFFCF9D7B)),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    ),
  ),

  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(foregroundColor: const Color(0xFFCF9D7B)),
  ),

  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: const Color(0xFF5D3D2E),
    labelStyle: const TextStyle(color: Color(0xFFCF9D7B)),
    border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: Color(0xFF8B5A3C)),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: Color(0xFFCF9D7B), width: 2),
    ),
  ),

  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: Color(0xFFCF9D7B),
    foregroundColor: Color(0xFF0C1519),
    elevation: 6,
  ),

  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: Color(0xFF6B4132),
    selectedItemColor: Color(0xFFCF9D7B),
    unselectedItemColor: Colors.white54,
  ),

  navigationBarTheme: NavigationBarThemeData(
    backgroundColor: const Color(0xFF6B4132),
    indicatorColor: const Color(0xFFCF9D7B).withOpacity(0.3),
  ),

  switchTheme: SwitchThemeData(
    thumbColor: WidgetStateProperty.resolveWith((states) =>
        states.contains(WidgetState.selected) ? const Color(0xFFCF9D7B) : null),
    trackColor: WidgetStateProperty.resolveWith((states) =>
        states.contains(WidgetState.selected) ? const Color(0xFF3A2218) : null),
  ),

  checkboxTheme: CheckboxThemeData(
    fillColor: WidgetStateProperty.resolveWith((states) =>
        states.contains(WidgetState.selected) ? const Color(0xFFCF9D7B) : null),
  ),

  radioTheme: RadioThemeData(
    fillColor: WidgetStateProperty.resolveWith((states) =>
        states.contains(WidgetState.selected) ? const Color(0xFFCF9D7B) : null),
  ),

  dialogTheme: DialogThemeData(
    backgroundColor: const Color(0xFF6B4132),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(28),
      side: const BorderSide(color: Color(0xFFCF9D7B), width: 1),
    ),
  ),

  snackBarTheme: SnackBarThemeData(
    backgroundColor: const Color(0xFFCF9D7B),
    contentTextStyle: const TextStyle(color: Color(0xFF0C1519)),
  ),

  listTileTheme: ListTileThemeData(
    textColor: const Color(0xFFE0C9B5),
    iconColor: const Color(0xFFCF9D7B),
    selectedTileColor: const Color(0xFF7A5545),
  ),

  dividerTheme: const DividerThemeData(color: Color(0xFF8B5A3C), thickness: 1),

  chipTheme: ChipThemeData(
    backgroundColor: const Color(0xFF7A5545),
    labelStyle: const TextStyle(color: Color(0xFFE0C9B5)),
    selectedColor: const Color(0xFFCF9D7B),
  ),

  tabBarTheme: TabBarThemeData(
    labelColor: const Color(0xFFCF9D7B),
    unselectedLabelColor: Colors.white70,
    indicator: const UnderlineTabIndicator(
      borderSide: BorderSide(color: Color(0xFFCF9D7B), width: 4),
    ),
  ),

  progressIndicatorTheme: const ProgressIndicatorThemeData(
    color: Color(0xFFCF9D7B),
  ),

  popupMenuTheme: PopupMenuThemeData(
    color: const Color(0xFF5D3D2E),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
  ),
);

/// ────────────────────────────────────────────────
/// ANTIQUE BRASS THEME (LIGHT)
final ThemeData antiqueBrassTheme = ThemeData(
  useMaterial3: true,
  brightness: Brightness.light,
  scaffoldBackgroundColor: const Color(0xFFCF9D7B),

  colorScheme: ColorScheme.fromSeed(
    seedColor: const Color(0xFF0C1519),
    brightness: Brightness.light,
    primary: const Color(0xFF0C1519),
    onPrimary: Colors.white,
    secondary: const Color(0xFF724B39),
    surface: const Color(0xFFE8C9B0),
    onSurface: const Color(0xFF0C1519),
    surfaceVariant: const Color(0xFFD4BCA8),
    outline: const Color(0xFF724B39),
  ),

  textTheme: const TextTheme(
    displayLarge: TextStyle(color: Color(0xFF0C1519), fontWeight: FontWeight.bold),
    bodyLarge: TextStyle(color: Color(0xFF0C1519), fontSize: 16),
    bodyMedium: TextStyle(color: Color(0xFF3A3534), fontSize: 14),
  ),

  iconTheme: const IconThemeData(color: Color(0xFF0C1519)),
  primaryIconTheme: const IconThemeData(color: Colors.white),

  appBarTheme: const AppBarTheme(
    backgroundColor: Color(0xFFCF9D7B),
    foregroundColor: Color(0xFF0C1519),
    elevation: 0,
  ),

  cardTheme: CardThemeData(
    color: const Color(0xFFE8C9B0),
    elevation: 2,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
  ),

  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: const Color(0xFF0C1519),
      foregroundColor: const Color(0xFFCF9D7B),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    ),
  ),

  filledButtonTheme: FilledButtonThemeData(
    style: FilledButton.styleFrom(
      backgroundColor: const Color(0xFF724B39),
      foregroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    ),
  ),

  outlinedButtonTheme: OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: const Color(0xFF0C1519),
      side: const BorderSide(color: Color(0xFF0C1519)),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    ),
  ),

  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(foregroundColor: const Color(0xFF724B39)),
  ),

  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: const Color(0xFFE8C9B0),
    labelStyle: const TextStyle(color: Color(0xFF3A3534)),
    border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: Color(0xFF724B39)),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: Color(0xFF0C1519), width: 2),
    ),
  ),

  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: Color(0xFF724B39),
    foregroundColor: Colors.white,
    elevation: 6,
  ),

  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: Color(0xFFE8C9B0),
    selectedItemColor: Color(0xFF0C1519),
    unselectedItemColor: Color(0xFF555555),
  ),

  navigationBarTheme: NavigationBarThemeData(
    backgroundColor: const Color(0xFFE8C9B0),
    indicatorColor: const Color(0xFFD4BCA8).withOpacity(0.5),
  ),

  switchTheme: SwitchThemeData(
    thumbColor: WidgetStateProperty.resolveWith((states) =>
        states.contains(WidgetState.selected) ? const Color(0xFF0C1519) : null),
    trackColor: WidgetStateProperty.resolveWith((states) =>
        states.contains(WidgetState.selected) ? const Color(0xFFCF9D7B) : null),
  ),

  checkboxTheme: CheckboxThemeData(
    fillColor: WidgetStateProperty.resolveWith((states) =>
        states.contains(WidgetState.selected) ? const Color(0xFF0C1519) : null),
  ),

  radioTheme: RadioThemeData(
    fillColor: WidgetStateProperty.resolveWith((states) =>
        states.contains(WidgetState.selected) ? const Color(0xFF0C1519) : null),
  ),

  dialogTheme: DialogThemeData(
    backgroundColor: const Color(0xFFCF9D7B),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(28),
      side: const BorderSide(color: Color(0xFF0C1519), width: 1.5),
    ),
  ),

  snackBarTheme: SnackBarThemeData(
    backgroundColor: const Color(0xFF0C1519),
    contentTextStyle: const TextStyle(color: Colors.white),
  ),

  listTileTheme: ListTileThemeData(
    textColor: const Color(0xFF0C1519),
    iconColor: const Color(0xFF0C1519),
    selectedTileColor: const Color(0xFFD4BCA8),
  ),

  dividerTheme: const DividerThemeData(color: Color(0xFF724B39), thickness: 1),

  chipTheme: ChipThemeData(
    backgroundColor: const Color(0xFFD4BCA8),
    labelStyle: const TextStyle(color: Color(0xFF0C1519)),
    selectedColor: const Color(0xFF0C1519),
    checkmarkColor: Colors.white,
  ),

  tabBarTheme: TabBarThemeData(
    labelColor: const Color(0xFF0C1519),
    unselectedLabelColor: Colors.grey.shade800,
    indicator: const UnderlineTabIndicator(
      borderSide: BorderSide(color: Color(0xFF0C1519), width: 4),
    ),
  ),

  progressIndicatorTheme: const ProgressIndicatorThemeData(
    color: Color(0xFF0C1519),
    circularTrackColor: Color(0xFFD4BCA8),
  ),

  popupMenuTheme: PopupMenuThemeData(
    color: const Color(0xFFE8C9B0),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
  ),
);

final List<ThemeData> themeList = [
  warmBeigeLightTheme,
  chineseBlackTheme,
  darkJungleGreenTheme,
  jetTheme,
  coffeeTheme,
  antiqueBrassTheme,
];