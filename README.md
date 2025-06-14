# Flutter Cat Breeds App

Prueba técnica en Flutter que consume la API pública de TheCatAPI para mostrar razas de gatos.

## Funcionalidades

- Lista de razas de gatos desde [TheCatAPI](https://api.thecatapi.com/v1/breeds)
- Detalle con descripción, temperamento, inteligencia y país de origen
- Indicador de carga durante la solicitud
- Control de errores
- Navegación con rutas dinámicas usando argumentos (RoutePageArguments)
- Manejo de estado con patrón BLoC (cat_bloc.dart)
- Separación por capas: modelo, servicios, UI, lógica de negocio y enrutamiento
- Uso del paquete http para realizar solicitudes a la API REST

## 📦 Estructura

```bash
lib/
├── main.dart
├── app.dart
├── models/
│   └── cat_model.dart
├── router/
│   ├── route_page_arguments.dart
│   ├── routes/
│   │   └── public_routes.dart
│   └── paths/
│       └── routes.dart
├── screens/
│   ├── home_screen.dart
│   ├── cat_detail_screen.dart
│   └── widgets/
│       ├── cat_detail_content.dart
│       ├── cat_list_item.dart
│       └── cat_list.dart
├── services/
│   └── api_service.dart
├── blocs/
│   └── cat_bloc.dart
```
