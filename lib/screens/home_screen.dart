import 'package:flutter/material.dart';
import 'package:prueba_tecnica/bloc/cat_bloc.dart';
import 'package:prueba_tecnica/screens/widgets/cat_list.dart';

import '../models/cat_model.dart';

// NOTA:
//
// La prueba técnica incluye una instrucción que sugiere usar un manejador de estado,
// y otra que pide específicamente usar FutureBuilder.
//
// Por eso incluyo ambas versiones:
//
// Con manejo de estado (BLoC con RxDart) — más escalable y estructurado.
// Con FutureBuilder — para cumplir literalmente con la instrucción de carga.
//

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   final CatBloc _bloc = CatBloc();

//   @override
//   void initState() {
//     super.initState();
//     _bloc.fetchCats();
//   }

//   @override
//   void dispose() {
//     _bloc.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Razas de Gatos')),
//       body: StreamBuilder<bool>(
//         stream: _bloc.loadingStream,
//         builder: (context, loadingSnapshot) {
//           if (loadingSnapshot.data == true) {
//             return const Center(child: CircularProgressIndicator());
//           }
//           return StreamBuilder<List<CatModel>>(
//             stream: _bloc.catBreedsStream,
//             builder: (context, snapshot) {
//               if (snapshot.hasError) {
//                 return const Center(child: Text('Error al cargar razas'));
//               } else if (!snapshot.hasData) {
//                 return const Center(child: Text('No hay datos'));
//               }
//               final cats = snapshot.data!;
//               return ListView.builder(
//                 itemCount: cats.length,
//                 itemBuilder: (context, index) {
//                   final cat = cats[index];
//                   return ListTile(
//                     leading: cat.imageUrl != null
//                         ? Image.network(cat.imageUrl!,
//                             width: 50, height: 50, fit: BoxFit.cover)
//                         : const Icon(Icons.pets),
//                     title: Text(cat.name),
//                     subtitle: Text(cat.origin),
//                     onTap: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => CatDetailScreen(cat: cat),
//                         ),
//                       );
//                     },
//                   );
//                 },
//               );
//             },
//           );
//         },
//       ),
//     );
//   }
// }

// ACA ESTOY USANDO EL FutureBuilder PARA LA CARGA

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final CatBloc _bloc = CatBloc();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Razas de Gatos')),
      body: FutureBuilder<List<CatModel>>(
        future: _bloc.fetchCatBreeds(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return const Center(child: Text('Error al cargar'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text('No hay datos'));
          }

          return CatList(cats: snapshot.data!);
        },
      ),
    );
  }
}
