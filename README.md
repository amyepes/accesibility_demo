# ♿ Mobile Accessibility Demo

Este proyecto muestra la diferencia entre una **aplicación móvil sin accesibilidad** y una **aplicación móvil inclusiva**, implementadas en **Flutter**.  
El objetivo es demostrar cómo aplicar buenas prácticas de accesibilidad mejora la experiencia de todos los usuarios, especialmente de quienes presentan discapacidades visuales, motrices o cognitivas.

---

## 📱 Estructura del proyecto

mobile-accessibility-demo/
├── bad_example/ # App sin accesibilidad
├── good_example/ # App accesible con configuración personalizada
├── assets/ # Imágenes de ejemplo
└── README.md

---

## 🧩 Concepto general

La accesibilidad en apps móviles busca garantizar que **todas las personas puedan usar la aplicación sin barreras**, independientemente de sus capacidades o limitaciones.

Principios clave (basados en las pautas **WCAG**):
- **Perceptible:** la información debe poder percibirse (texto alternativo, buen contraste).
- **Operable:** la app debe poder usarse con diferentes métodos de entrada (voz, gestos, teclado).
- **Comprensible:** la interfaz debe ser clara y predecible.
- **Robusta:** debe funcionar con tecnologías de asistencia (lectores de pantalla, magnificadores, etc.).

---

## 🚫 Versión sin accesibilidad (`bad_example/`)

Características:
- Botones principales ubicados en la parte superior (difícil de alcanzar con una mano).  
- Texto pequeño y con bajo contraste.  
- Imagen sin descripción ni etiqueta semántica.  
- Sin soporte para tamaño de texto dinámico.  
- Sin opciones de personalización visual.

## ✅ Versión accesible (`good_example/`)

Características implementadas:
- Botones importantes en la parte inferior (más fácil de tocar).  
- Texto escalable según preferencia del usuario.  
- Descripciones semánticas (`Semantics`, `Tooltip`, `accessibilityLabel`).  
- Contraste de colores configurable.  
- **Página de configuración de accesibilidad** con:
  - Ajuste de tamaño de fuente.  
  - Cambio de paleta de colores (modos para deuteranopia y tritanopia).  
  - Reemplazo de imágenes sensibles (ej. evitar aracnofobia).  
  - Activar modo de alto contraste.