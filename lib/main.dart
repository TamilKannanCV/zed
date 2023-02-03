import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zed/api/api.dart';
import 'package:zed/models/custom_response/custom_response.dart';
import 'package:zed/screens/home_screen.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FutureProvider<CustomResponse?>(
        create: (context) => Api().getData(),
        initialData: null,
        child: const HomeScreen(),
      ),
    );
  }
}
