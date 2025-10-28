import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'accessibility_config.dart';
import 'home_page.dart';

void main() {
  runApp(GoodApp());
}

class GoodApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => AccessibilityConfig(),
      child: Consumer<AccessibilityConfig>(
        builder: (context, config, _) {
          return MaterialApp(
            title: 'App accesible',
            theme: ThemeData(
              colorScheme: config.colorScheme,
              useMaterial3: true,
            ),
            home: HomePage(),
            debugShowCheckedModeBanner: false,
          );
        },
      ),
    );
  }
}
