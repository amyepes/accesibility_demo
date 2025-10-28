import 'package:flutter/material.dart';
import 'details_page.dart';
import 'widgets/custom_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(title: const Text('Home')),
      body: Column(
        children: [
          // 🔴 Botones importantes arriba (mala práctica)
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CustomButton(
                label: "Settings",
                onPressed: () {},
              ),
              CustomButton(
                label: "Next",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const DetailsPage()),
                  );
                },
              ),
            ],
          ),
          const SizedBox(height: 20),
          Image.asset(
            'assets/images/cute-spider.png',
            height: 300,
            // 🔴 Imagen sin descripción alternativa (mala práctica)
            // semanticLabel: 'A cute spider cartoon',
          ),
          const Text(
            "Welcome to the app!",
            style: TextStyle(fontSize: 14, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
