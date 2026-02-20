import 'package:flutter/material.dart';

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
    surface: const Color(0xFFFFFBF7),
    onSurface: const Color(0xFF2A1E16),
  ),

  textTheme: const TextTheme(
    displayLarge: TextStyle(color: Color(0xFF5C3A2A), fontWeight: FontWeight.bold),
    titleLarge: TextStyle(color: Color(0xFF2A1E16), fontWeight: FontWeight.w600),
    bodyLarge: TextStyle(color: Color(0xFF2A1E16), fontSize: 16),
    bodyMedium: TextStyle(color: Color(0xFF4A3A30), fontSize: 14),
  ),

  iconTheme: const IconThemeData(color: Color(0xFF5C3A2A)),

  appBarTheme: const AppBarTheme(
    backgroundColor: Color(0xFFF8F2EA),
    foregroundColor: Color(0xFF5C3A2A),
    elevation: 0,
    centerTitle: true,
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
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
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
  ),

  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: Color(0xFFFFFBF7),
    selectedItemColor: Color(0xFF5C3A2A),
    unselectedItemColor: Color(0xFF8B7355),
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

  dialogTheme: DialogThemeData(
    backgroundColor: const Color(0xFFFFFBF7),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
  ),

  listTileTheme: ListTileThemeData(
    textColor: const Color(0xFF2A1E16),
    iconColor: const Color(0xFF5C3A2A),
    selectedTileColor: const Color(0xFFE3D0C2),
  ),

  dividerTheme: const DividerThemeData(color: Color(0xFFD9C2B0), thickness: 1),
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
  ),

  textTheme: const TextTheme(
    displayLarge: TextStyle(color: Color(0xFFCF9D7B), fontWeight: FontWeight.bold),
    bodyLarge: TextStyle(color: Color(0xFFE0C9B5), fontSize: 16),
    bodyMedium: TextStyle(color: Colors.white70, fontSize: 14),
  ),

  iconTheme: const IconThemeData(color: Color(0xFFCF9D7B)),

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
  ),

  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: Color(0xFF0C1519),
    selectedItemColor: Color(0xFFCF9D7B),
    unselectedItemColor: Colors.white54,
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

  dialogTheme: DialogThemeData(
    backgroundColor: const Color(0xFF0C1519),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
  ),

  listTileTheme: ListTileThemeData(
    textColor: const Color(0xFFE0C9B5),
    iconColor: const Color(0xFFCF9D7B),
    selectedTileColor: const Color(0xFF2A3C45),
  ),

  dividerTheme: const DividerThemeData(color: Color(0xFF3A3534), thickness: 1),
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
  ),

  textTheme: const TextTheme(
    displayLarge: TextStyle(color: Color(0xFFCF9D7B), fontWeight: FontWeight.bold),
    bodyLarge: TextStyle(color: Colors.white, fontSize: 16),
    bodyMedium: TextStyle(color: Color(0xFFCF9D7B), fontSize: 14),
  ),

  iconTheme: const IconThemeData(color: Color(0xFFCF9D7B)),

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
  ),

  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: Color(0xFF162127),
    selectedItemColor: Color(0xFFCF9D7B),
    unselectedItemColor: Colors.white54,
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

  dialogTheme: DialogThemeData(
    backgroundColor: const Color(0xFF162127),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
  ),

  listTileTheme: ListTileThemeData(
    textColor: const Color(0xFFE0C9B5),
    iconColor: const Color(0xFFCF9D7B),
    selectedTileColor: const Color(0xFF2F3F47),
  ),

  dividerTheme: const DividerThemeData(color: Color(0xFF3A3534), thickness: 1),
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
  ),

  textTheme: const TextTheme(
    displayLarge: TextStyle(color: Color(0xFFCF9D7B), fontWeight: FontWeight.bold),
    bodyLarge: TextStyle(color: Colors.white, fontSize: 16),
    bodyMedium: TextStyle(color: Color(0xFFCF9D7B), fontSize: 14),
  ),

  iconTheme: const IconThemeData(color: Color(0xFFCF9D7B)),

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
  ),

  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: Color(0xFF2A2A2A),
    selectedItemColor: Color(0xFFCF9D7B),
    unselectedItemColor: Colors.white54,
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

  dialogTheme: DialogThemeData(
    backgroundColor: const Color(0xFF2A2A2A),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
  ),

  listTileTheme: ListTileThemeData(
    textColor: const Color(0xFFE0C9B5),
    iconColor: const Color(0xFFCF9D7B),
    selectedTileColor: const Color(0xFF454545),
  ),

  dividerTheme: const DividerThemeData(color: Color(0xFF555555), thickness: 1),
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
  ),

  textTheme: const TextTheme(
    displayLarge: TextStyle(color: Color(0xFFCF9D7B), fontWeight: FontWeight.bold),
    bodyLarge: TextStyle(color: Color(0xFFCF9D7B), fontSize: 16),
    bodyMedium: TextStyle(color: Colors.white70, fontSize: 14),
  ),

  iconTheme: const IconThemeData(color: Color(0xFFCF9D7B)),

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
  ),

  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: Color(0xFF6B4132),
    selectedItemColor: Color(0xFFCF9D7B),
    unselectedItemColor: Colors.white54,
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

  dialogTheme: DialogThemeData(
    backgroundColor: const Color(0xFF6B4132),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
  ),

  listTileTheme: ListTileThemeData(
    textColor: const Color(0xFFE0C9B5),
    iconColor: const Color(0xFFCF9D7B),
    selectedTileColor: const Color(0xFF7A5545),
  ),

  dividerTheme: const DividerThemeData(color: Color(0xFF8B5A3C), thickness: 1),
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
  ),

  textTheme: const TextTheme(
    displayLarge: TextStyle(color: Color(0xFF0C1519), fontWeight: FontWeight.bold),
    bodyLarge: TextStyle(color: Color(0xFF0C1519), fontSize: 16),
    bodyMedium: TextStyle(color: Color(0xFF3A3534), fontSize: 14),
  ),

  iconTheme: const IconThemeData(color: Color(0xFF0C1519)),

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
  ),

  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: Color(0xFFE8C9B0),
    selectedItemColor: Color(0xFF0C1519),
    unselectedItemColor: Color(0xFF555555),
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

  dialogTheme: DialogThemeData(
    backgroundColor: const Color(0xFFCF9D7B),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
  ),

  listTileTheme: ListTileThemeData(
    textColor: const Color(0xFF0C1519),
    iconColor: const Color(0xFF0C1519),
    selectedTileColor: const Color(0xFFD4BCA8),
  ),

  dividerTheme: const DividerThemeData(color: Color(0xFF724B39), thickness: 1),
);

final ThemeData deepOceanDream = ThemeData(
  useMaterial3: true,
  brightness: Brightness.dark,
  scaffoldBackgroundColor: const Color(0xFF0A192F),

  colorScheme: ColorScheme.fromSeed(
    seedColor: const Color(0xFF00D4FF),
    brightness: Brightness.dark,
    primary: const Color(0xFF00D4FF),
    onPrimary: const Color(0xFF001F3F),
    secondary: const Color(0xFF64FFDA),
    surface: const Color(0xFF112240),
    onSurface: const Color(0xFFE0F7FA),
    surfaceVariant: const Color(0xFF1E3A5F),
    outline: const Color(0xFF4FC3F7),
  ),

  textTheme: const TextTheme(
    displayLarge: TextStyle(
      color: Color(0xFF00D4FF),
      fontWeight: FontWeight.bold,
    ),
    bodyLarge: TextStyle(color: Color(0xFFE0F7FA), fontSize: 16),
    bodyMedium: TextStyle(color: Color(0xFFB2EBF2), fontSize: 14),
    labelLarge: TextStyle(color: Color(0xFF64FFDA)),
  ),

  iconTheme: const IconThemeData(color: Color(0xFF00D4FF)),
  appBarTheme: const AppBarTheme(
    backgroundColor: Color(0xFF0A192F),
    foregroundColor: Color(0xFF00D4FF),
    elevation: 0,
  ),

  cardTheme: CardThemeData(
    color: const Color(0xFF112240),
    elevation: 4,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
  ),

  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: const Color(0xFF00D4FF),
      foregroundColor: const Color(0xFF001F3F),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    ),
  ),

  outlinedButtonTheme: OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: const Color(0xFF64FFDA),
      side: const BorderSide(color: Color(0xFF64FFDA)),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    ),
  ),

  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: const Color(0xFF1E3A5F),
    labelStyle: const TextStyle(color: Color(0xFF00D4FF)),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: Color(0xFF4FC3F7)),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: Color(0xFF00D4FF), width: 2),
    ),
  ),

  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: Color(0xFF64FFDA),
    foregroundColor: Color(0xFF001F3F),
  ),

  switchTheme: SwitchThemeData(
    thumbColor: WidgetStateProperty.resolveWith(
      (states) =>
          states.contains(WidgetState.selected)
              ? const Color(0xFF00D4FF)
              : null,
    ),
    trackColor: WidgetStateProperty.resolveWith(
      (states) =>
          states.contains(WidgetState.selected)
              ? const Color(0xFF64FFDA).withOpacity(0.5)
              : null,
    ),
  ),

  checkboxTheme: CheckboxThemeData(
    fillColor: WidgetStateProperty.resolveWith(
      (states) =>
          states.contains(WidgetState.selected)
              ? const Color(0xFF00D4FF)
              : null,
    ),
  ),

  dialogTheme: DialogThemeData(
    backgroundColor: const Color(0xFF112240),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
  ),

  // ... (add snackBarTheme, listTileTheme, dividerTheme, chipTheme, tabBarTheme, etc. same as previous patterns)
  // For brevity I'm showing the core — copy-paste the rest from your previous themes
);

final ThemeData lavenderTwilight = ThemeData(
  useMaterial3: true,
  brightness: Brightness.dark,
  scaffoldBackgroundColor: const Color(0xFF1A0B2E),

  colorScheme: ColorScheme.fromSeed(
    seedColor: const Color(0xFFD0BCFF),
    brightness: Brightness.dark,
    primary: const Color(0xFFD0BCFF),
    onPrimary: const Color(0xFF1C1526),
    secondary: const Color(0xFFF06292),
    surface: const Color(0xFF2A1B47),
    onSurface: const Color(0xFFE8DAFF),
  ),

  textTheme: const TextTheme(
    displayLarge: TextStyle(
      color: Color(0xFFD0BCFF),
      fontWeight: FontWeight.bold,
    ),
    bodyLarge: TextStyle(color: Color(0xFFE8DAFF)),
    bodyMedium: TextStyle(color: Color(0xFFCE93D8)),
  ),

  appBarTheme: const AppBarTheme(
    backgroundColor: Color(0xFF1A0B2E),
    foregroundColor: Color(0xFFD0BCFF),
    elevation: 0,
  ),

  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: const Color(0xFFF06292),
      foregroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
    ),
  ),

  // fill the rest similarly (input, switch, dialog, etc.)
);
final ThemeData mintSunrise = ThemeData(
  useMaterial3: true,
  brightness: Brightness.light,
  scaffoldBackgroundColor: const Color(0xFFF5FFFA),

  colorScheme: ColorScheme.fromSeed(
    seedColor: const Color(0xFF26A69A),
    brightness: Brightness.light,
    primary: const Color(0xFF26A69A),
    onPrimary: Colors.white,
    secondary: const Color(0xFFFF7043),
    surface: const Color(0xFFFFFFFF),
    onSurface: const Color(0xFF1A3C34),
  ),

  textTheme: const TextTheme(
    displayLarge: TextStyle(
      color: Color(0xFF00695C),
      fontWeight: FontWeight.bold,
    ),
    bodyLarge: TextStyle(color: Color(0xFF1A3C34)),
    bodyMedium: TextStyle(color: Color(0xFF455A64)),
  ),

  appBarTheme: const AppBarTheme(
    backgroundColor: Color(0xFF26A69A),
    foregroundColor: Colors.white,
    elevation: 0,
  ),

  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: const Color(0xFF26A69A),
      foregroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    ),
  ),

  // continue with other widgets...
);

final ThemeData cyberNeon = ThemeData(
  useMaterial3: true,
  brightness: Brightness.dark,
  scaffoldBackgroundColor: const Color(0xFF0D001A),

  colorScheme: ColorScheme.fromSeed(
    seedColor: const Color(0xFF00FF9F),
    brightness: Brightness.dark,
    primary: const Color(0xFF00FF9F),
    onPrimary: const Color(0xFF0D001A),
    secondary: const Color(0xFFFF00AA),
    surface: const Color(0xFF1A0033),
    onSurface: const Color(0xFFE0F2F1),
  ),

  textTheme: const TextTheme(
    displayLarge: TextStyle(
      color: Color(0xFF00FF9F),
      fontWeight: FontWeight.bold,
    ),
    bodyLarge: TextStyle(color: Color(0xFFB2F2BB)),
    bodyMedium: TextStyle(color: Color(0xFFFF80AB)),
  ),

  appBarTheme: const AppBarTheme(
    backgroundColor: Color(0xFF0D001A),
    foregroundColor: Color(0xFF00FF9F),
    elevation: 0,
  ),

  cardTheme: CardThemeData(
    color: const Color(0xFF1A0033),
    elevation: 6,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
  ),

  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: const Color(0xFFFF00AA),
      foregroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    ),
  ),

  // fill remaining widgets consistently
);
final List<ThemeData> themeList = [
  warmBeigeLightTheme,
  chineseBlackTheme,
  darkJungleGreenTheme,
  jetTheme,
  coffeeTheme,
  antiqueBrassTheme,
  deepOceanDream,
  lavenderTwilight,
  mintSunrise,
  cyberNeon,
];
