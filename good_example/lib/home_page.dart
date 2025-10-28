import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'accessibility_config.dart';
import 'settings_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final config = context.watch<AccessibilityConfig>();

    return Scaffold(
      appBar: AppBar(title: Text('Tienda accesible')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Semantics(
            label: 'Imagen de producto, una araña',
            child: Image.asset(
              config.replaceSensitiveImage
                  ? 'assets/images/cute-spider.png'
                  : 'assets/images/spider-creepy.jpg',
              //height: 200,
            ),
          ),
          Text(
            'Producto destacado',
            textScaleFactor: config.fontScale,
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(12),
        child: ElevatedButton.icon(
          onPressed: () {},
          icon: Icon(Icons.shopping_cart),
          label: Text('Agregar al carrito'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Configuración de accesibilidad',
        child: Icon(Icons.settings),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => SettingsPage()),
          );
        },
      ),
    );
  }
}
