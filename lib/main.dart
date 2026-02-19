import 'package:fakestore/blocs/auth_bloc/auth_bloc.dart';
import 'package:fakestore/blocs/cart_bloc/cart_bloc.dart';
import 'package:fakestore/blocs/product_bloc/product_bloc.dart';
import 'package:fakestore/blocs/theme_bloc/theme_bloc.dart';
import 'package:fakestore/constants/app_theme.dart';
import 'package:fakestore/services/auth_service.dart';
import 'package:fakestore/services/cart_service.dart';
import 'package:fakestore/services/product_service.dart';
import 'package:fakestore/views/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => ThemeBloc()),
        BlocProvider(create: (context) => AuthBloc(authService: AuthService())..add(AuthCheckLoginEvent())),
        BlocProvider(create: (context) => CartBloc(cartService: CartService())),
        BlocProvider(
          create: (context) => ProductBloc(productService: ProductService()),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeState>(
      builder: (context, state) {
        if(state is ThemeInitial){
        return MaterialApp(
          title: "Fake Store",
          themeMode: ThemeMode.light,
          theme: themeList[0],
          home: const SplashPage(),
        );}
        final themeIndex = (state as ThemeChangeState).themeIndex;
        return MaterialApp(
          title: "Fake Store",
          themeMode: themeIndex==0?ThemeMode.light:ThemeMode.dark,
          theme: themeList[themeIndex],
          home: const SplashPage(),
        );
      },
    );
  }
}
