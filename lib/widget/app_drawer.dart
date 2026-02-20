import 'package:fakestore/blocs/auth_bloc/auth_bloc.dart';
import 'package:fakestore/views/cart_page.dart';
import 'package:fakestore/views/theme_change_page.dart';
import 'package:fakestore/views/user_profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              padding: EdgeInsetsGeometry.all(0),
              child: Center(child: Text('Menu', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700)))),
            Card(
              child: ListTile(
                leading: const Icon(Icons.home),
                trailing: Icon(Icons.arrow_forward_ios, size: 16),
                title: const Text('Home', ),
                onTap: () => Navigator.pop(context),
              ),
            ),
            Card(
              child: ListTile(
                leading: const Icon(Icons.shopping_cart),
                title: const Text('Cart'),
                trailing: Icon(Icons.arrow_forward_ios, size: 16),
                onTap:
                    () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const CartPage()),
                    ),
              ),
            ),
            Card(
              child: ListTile(
                leading: const Icon(Icons.color_lens_outlined),
                title: const Text('Change Theme'),
                trailing: Icon(Icons.arrow_forward_ios, size: 16),
                onTap:
                    () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ThemeChangePage(),
                      ),
                    ),
              ),
            ),
              Card(
              child: ListTile(
                leading: const Icon(Icons.person),
                title: const Text('User Info'),
                trailing: Icon(Icons.arrow_forward_ios, size: 16),
                onTap: () {
                  final authState = context.read<AuthBloc>().state;
                  if (authState is AuthSuccesState) {
                    final user = authState.user;
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => UserProfile(user: user)),);}
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: const Icon(Icons.logout),
                title: const Text('Logout'),
                trailing: Icon(Icons.arrow_forward_ios, size: 16),
                onTap: () {
                  context.read<AuthBloc>().add(AuthLogoutEvent());
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

