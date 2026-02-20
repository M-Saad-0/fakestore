import 'package:fakestore/blocs/auth_bloc/auth_bloc.dart';
import 'package:fakestore/blocs/cart_bloc/cart_bloc.dart';
import 'package:fakestore/blocs/product_bloc/product_bloc.dart';
import 'package:fakestore/blocs/theme_bloc/theme_bloc.dart';
import 'package:fakestore/constants/app_theme.dart';
import 'package:fakestore/services/auth_service.dart';
import 'package:fakestore/services/cart_service.dart';
import 'package:fakestore/services/product_service.dart';
import 'package:fakestore/simple_bloc_observer.dart';
import 'package:fakestore/views/home_page.dart';
import 'package:fakestore/views/login_page.dart';
import 'package:fakestore/views/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  Bloc.observer = SimpleBlocObserver();
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => ThemeBloc()..add(GetCurrentThemeEvent())),
        BlocProvider(create: (context) => AuthBloc(authService: AuthService())..add(AuthCheckLoginEvent())),
        BlocProvider(
          create: (context) => ProductBloc(productService: ProductService())..add(GetProductsByCategory(category: "All")),
        ),
        BlocProvider(create: (context) {
          final userId = context.read<AuthBloc>().state is AuthSuccesState ? (context.read<AuthBloc>().state as AuthSuccesState).user : null;
          return CartBloc(cartService: CartService())..add(FetchCartEvent(userId: userId?.id ?? -1));
        }),
      ],
      child: MyApp(),
    ),
  );
}




class MyApp extends StatelessWidget {
   MyApp({super.key});

  
  final GlobalKey<NavigatorState> _navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeState>(
      builder: (context, state) {
        int themeIndex = 0;
        if (state is ThemeChangeState) {
          themeIndex = state.themeIndex;
        }

        return MaterialApp(
          title: "Fake Store",
          
          navigatorKey: _navigatorKey,
          themeMode: themeIndex == 0 || themeIndex == 8 ? ThemeMode.light : ThemeMode.dark,
          theme: themeList[themeIndex],
          
          
          
          builder: (context, child) {
            return BlocListener<AuthBloc, AuthState>(
              listener: (context, authState) {
                if (authState is AuthSuccesState) {
                  _navigatorKey.currentState?.pushAndRemoveUntil(
                    MaterialPageRoute(builder: (context) => const HomePage()),
                    (route) => false,
                  );
                } else if (authState is AuthErrorState || authState is AuthInitial || authState is AuthUnauthenticatedState) {
                  _navigatorKey.currentState?.pushAndRemoveUntil(
                    MaterialPageRoute(builder: (context) => const LoginPage()),
                    (route) => false,
                  );
                }
              },
              child: child!, 
            );
          },

          
          home: BlocBuilder<AuthBloc, AuthState>(
            builder: (context, authState) {
              if (authState is AuthSuccesState) {
                return const HomePage();
              } else if (authState is AuthErrorState || authState is AuthInitial || authState is AuthUnauthenticatedState) {
                return const LoginPage();
              }
              return const SplashPage();
            },
          ),
        );
      },
    );
  }
}