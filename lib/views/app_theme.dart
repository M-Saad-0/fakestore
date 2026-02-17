import 'package:flutter/material.dart';

final ThemeData chineseBlackTheme = ThemeData(
  useMaterial3: true,
  brightness: Brightness.dark,
  scaffoldBackgroundColor: const Color(0xFF0C1519), 
  primaryColor: const Color(0xFF0C1519),

  
  colorScheme: const ColorScheme.dark(
    primary: Color(0xFFCF9D7B),    
    secondary: Color(0xFF162127),  
    surface: Color(0xFF162127),    
    background: Color(0xFF0C1519),
    onPrimary: Color(0xFF0C1519),  
    onSurface: Color(0xFFCF9D7B),  
  ),

  
  textTheme: const TextTheme(
    displayLarge: TextStyle(color: Color(0xFFCF9D7B), fontWeight: FontWeight.bold),
    bodyLarge: TextStyle(color: Color(0xFFCF9D7B)),
    bodyMedium: TextStyle(color: Colors.white70),
  ),

  
  appBarTheme: const AppBarTheme(
    backgroundColor: Color(0xFF0C1519),
    foregroundColor: Color(0xFFCF9D7B),
    elevation: 0,
    centerTitle: true,
  ),

  
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: const Color(0xFFCF9D7B), 
      foregroundColor: const Color(0xFF0C1519), 
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    ),
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: const Color(0xFFCF9D7B),
      side: const BorderSide(color: Color(0xFFCF9D7B)),
    ),
  ),

  
  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: const Color(0xFF162127), 
    labelStyle: const TextStyle(color: Color(0xFFCF9D7B)),
    enabledBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: Color(0xFF3A3534)), 
      borderRadius: BorderRadius.circular(8),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: Color(0xFFCF9D7B), width: 2),
      borderRadius: BorderRadius.circular(8),
    ),
  ),

  
  dialogTheme: DialogThemeData(
    backgroundColor: const Color(0xFF0C1519),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16),
      side: const BorderSide(color: Color(0xFFCF9D7B), width: 2), 
    ),
    titleTextStyle: const TextStyle(fontSize: 20, color: Color(0xFFCF9D7B), fontWeight: FontWeight.bold),
  ),
);



final ThemeData darkJungleGreenTheme = ThemeData(
  useMaterial3: true,
  brightness: Brightness.dark,
  scaffoldBackgroundColor: const Color(0xFF162127), 

  colorScheme: const ColorScheme.dark(
    primary: Color(0xFF724B39),    
    secondary: Color(0xFF3A3534),  
    surface: Color(0xFF1F2B32),    
    onPrimary: Colors.white,
    onSurface: Color(0xFFCF9D7B),
  ),

  textTheme: const TextTheme(
    displayLarge: TextStyle(color: Color(0xFFCF9D7B), fontWeight: FontWeight.bold),
    bodyLarge: TextStyle(color: Colors.white),
    bodyMedium: TextStyle(color: Color(0xFFCF9D7B)),
  ),

  appBarTheme: const AppBarTheme(
    backgroundColor: Color(0xFF162127),
    foregroundColor: Color(0xFFCF9D7B),
    elevation: 0,
  ),

  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: const Color(0xFF724B39), 
      foregroundColor: Colors.white,
    ),
  ),

  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: const Color(0xFF0C1519), 
    enabledBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: Color(0xFF3A3534)),
      borderRadius: BorderRadius.circular(8),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: Color(0xFF724B39), width: 2), 
      borderRadius: BorderRadius.circular(8),
    ),
  ),

  dialogTheme: DialogThemeData(
    backgroundColor: const Color(0xFF162127),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16),
      side: const BorderSide(color: Color(0xFF724B39), width: 2), 
    ),
  ),
);

final ThemeData jetTheme = ThemeData(
  useMaterial3: true,
  brightness: Brightness.dark,
  scaffoldBackgroundColor: const Color(0xFF3A3534), 

  colorScheme: const ColorScheme.dark(
    primary: Color(0xFFCF9D7B),    
    secondary: Color(0xFF724B39),  
    surface: Color(0xFF45403F),    
    onPrimary: Color(0xFF0C1519),
    onSurface: Color(0xFFCF9D7B),
  ),

  textTheme: const TextTheme(
    displayLarge: TextStyle(color: Color(0xFFCF9D7B)),
    bodyLarge: TextStyle(color: Colors.white),
  ),

  appBarTheme: const AppBarTheme(
    backgroundColor: Color(0xFF3A3534),
    foregroundColor: Color(0xFFCF9D7B),
  ),

  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: const Color(0xFFCF9D7B),
      foregroundColor: const Color(0xFF3A3534), 
    ),
  ),

  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: const Color(0xFF45403F),
    enabledBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: Color(0xFF724B39)), 
      borderRadius: BorderRadius.circular(8),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: Color(0xFFCF9D7B), width: 2),
      borderRadius: BorderRadius.circular(8),
    ),
  ),

  dialogTheme: DialogThemeData(
    backgroundColor: const Color(0xFF3A3534),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16),
      side: const BorderSide(color: Color(0xFFCF9D7B), width: 2), 
    ),
  ),
);

final ThemeData coffeeTheme = ThemeData(
  useMaterial3: true,
  brightness: Brightness.dark,
  scaffoldBackgroundColor: const Color(0xFF724B39), 

  colorScheme: const ColorScheme.dark(
    primary: Color(0xFFCF9D7B),    
    secondary: Color(0xFF3A3534),  
    surface: Color(0xFF5D3D2E),    
    onPrimary: Color(0xFF0C1519),
    onSurface: Color(0xFFCF9D7B),
  ),

  textTheme: const TextTheme(
    bodyLarge: TextStyle(color: Color(0xFFCF9D7B)),
    bodyMedium: TextStyle(color: Colors.white),
  ),

  appBarTheme: const AppBarTheme(
    backgroundColor: Color(0xFF724B39),
    foregroundColor: Color(0xFFCF9D7B),
  ),

  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: const Color(0xFF3A3534), 
      foregroundColor: Colors.white,
    ),
  ),

  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: const Color(0xFF5D3D2E),
    enabledBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: Color(0xFF3A3534)),
      borderRadius: BorderRadius.circular(8),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: Color(0xFFCF9D7B), width: 2),
      borderRadius: BorderRadius.circular(8),
    ),
  ),

  dialogTheme: DialogThemeData(
    backgroundColor: const Color(0xFF724B39),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16),
      side: const BorderSide(color: Color(0xFF162127), width: 2), 
    ),
  ),
);


final ThemeData antiqueBrassTheme = ThemeData(
  useMaterial3: true,
  brightness: Brightness.light,
  scaffoldBackgroundColor: const Color(0xFFCF9D7B), 

  colorScheme: const ColorScheme.light(
    primary: Color(0xFF0C1519),    
    secondary: Color(0xFF724B39),  
    surface: Color(0xFFE0BFA6),    
    onPrimary: Colors.white,
    onSurface: Color(0xFF0C1519),  
  ),

  textTheme: const TextTheme(
    displayLarge: TextStyle(color: Color(0xFF0C1519), fontWeight: FontWeight.bold),
    bodyLarge: TextStyle(color: Color(0xFF0C1519)),
    bodyMedium: TextStyle(color: Color(0xFF3A3534)),
  ),

  appBarTheme: const AppBarTheme(
    backgroundColor: Color(0xFFCF9D7B),
    foregroundColor: Color(0xFF0C1519), 
    elevation: 0,
  ),

  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: const Color(0xFF0C1519), 
      foregroundColor: const Color(0xFFCF9D7B), 
    ),
  ),

  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: const Color(0xFFE0BFA6), 
    labelStyle: const TextStyle(color: Color(0xFF3A3534)),
    enabledBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: Color(0xFF724B39)), 
      borderRadius: BorderRadius.circular(8),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: Color(0xFF0C1519), width: 2), 
      borderRadius: BorderRadius.circular(8),
    ),
  ),

  dialogTheme: DialogThemeData(
    backgroundColor: const Color(0xFFCF9D7B),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16),
      side: const BorderSide(color: Color(0xFF0C1519), width: 2), 
    ),
    titleTextStyle: const TextStyle(fontSize: 20, color: Color(0xFF0C1519), fontWeight: FontWeight.bold),
  ),
);


