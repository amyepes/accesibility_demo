import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'accessibility_config.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final config = context.watch<AccessibilityConfig>();

    return Scaffold(
      appBar: AppBar(title: Text('Configuración de accesibilidad')),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          Text('Tamaño de fuente'),
          Slider(
            value: config.fontScale,
            min: 0.8,
            max: 1.5,
            divisions: 7,
            label: config.fontScale.toStringAsFixed(1),
            onChanged: config.setFontScale,
          ),
          Divider(),
          Text('Paleta de colores'),
          DropdownButton<String>(
            value: 'normal',
            items: const [
              DropdownMenuItem(value: 'normal', child: Text('Normal')),
              DropdownMenuItem(value: 'deuteranopia', child: Text('Deuteranopia')),
              DropdownMenuItem(value: 'tritanopia', child: Text('Tritanopia')),
            ],
            onChanged: (v) => config.setColorScheme(v!),
          ),
          Divider(),
          SwitchListTile(
            title: Text('Reemplazar imágenes sensibles'),
            value: config.replaceSensitiveImage,
            onChanged: config.toggleSensitiveImage,
          ),
          SwitchListTile(
            title: Text('Modo de alto contraste'),
            value: config.colorScheme == ColorScheme.highContrastLight(),
            onChanged: config.toggleHighContrast,
          ),
        ],
      ),
    );
  }
}
