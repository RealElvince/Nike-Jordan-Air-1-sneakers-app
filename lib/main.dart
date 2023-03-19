import 'package:flutter/material.dart';
import 'package:snkrs_app/models/cart_shoe.dart';

import 'package:snkrs_app/pages/onboarding_screen.dart';
import 'package:provider/provider.dart';

void main() => runApp(const NikeApp());

class NikeApp extends StatelessWidget {
  const NikeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CartShoe(),
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Nike App',
          theme: ThemeData(
              brightness: Brightness.light,
              scaffoldBackgroundColor: Colors.grey[900]),
          home: const OnboardingPage(),
        );
      },
    );
  }
}
