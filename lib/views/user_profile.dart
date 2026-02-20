import 'package:fakestore/blocs/auth_bloc/auth_bloc.dart';
import 'package:fakestore/models/user_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserProfile extends StatelessWidget {
  final UserModel user;
  const UserProfile({super.key, required this.user});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("My Profile"),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            // 1. Profile Avatar Header
            CircleAvatar(
              radius: 50,
              child: Text(
                user.name.firstname[0].toUpperCase(),
                style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 16),
            
            // 2. Name and Username
            Text(
              user.fullName, // Using the getter we created in the model
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(
              "@${user.username}",
              style: const TextStyle(fontSize: 16, ),
            ),
            const SizedBox(height: 32),

            // 3. Info Cards
            _buildInfoTile(
              context,
              icon: Icons.email_outlined,
              title: "Email",
              subtitle: user.email,
            ),
            _buildInfoTile(
              context,
              icon: Icons.phone_outlined,
              title: "Phone",
              subtitle: user.phone,
            ),
            _buildInfoTile(
              context,
              icon: Icons.location_on_outlined,
              title: "Address",
              subtitle: user.address.fullAddress, // Using the getter from our model
            ),
            _buildInfoTile(
              context,
              icon: Icons.badge_outlined,
              title: "User ID",
              subtitle: "#${user.id.toString()}",
            ),
            
            const SizedBox(height: 40),
            
            // 4. Logout Button (Themed)
            SizedBox(
              width: double.infinity,
              child: OutlinedButton.icon(
                onPressed: () {
                  context.read<AuthBloc>().add(AuthLogoutEvent());
                },
                style: OutlinedButton.styleFrom(
                  foregroundColor: Theme.of(context).colorScheme.error,
                  side: BorderSide(color: Theme.of(context).colorScheme.error),
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                ),
                icon: const Icon(Icons.logout),
                label: const Text("Log Out"),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Reusable Tile Widget using Theme Data
  Widget _buildInfoTile(BuildContext context, {
    required IconData icon, 
    required String title, 
    required String subtitle
  }) {
    final theme = Theme.of(context);
    
    return Card(
      elevation: 0,
      margin: const EdgeInsets.only(bottom: 12),
      color: theme.colorScheme.surfaceVariant.withOpacity(0.3),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: ListTile(
        leading: Icon(icon, color: theme.colorScheme.primary),
        title: Text(
          title,
          style: theme.textTheme.labelMedium?.copyWith(
            color: theme.colorScheme.secondary,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          subtitle,
          style: theme.textTheme.bodyLarge,
        ),
      ),
    );
  }
}