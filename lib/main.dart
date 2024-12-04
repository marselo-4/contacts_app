import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:navigation_app/contact.dart';
import 'package:navigation_app/screens/ContactPage.dart';
import 'package:navigation_app/screens/PhonePage.dart';

void main() {


  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final _router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => ContactPage(
      [
        Contact(name: "Carlos", email: "carlos@gmail.com", description: "El más guapo", id: 0, phone: "690609107"),
        Contact(name: "Juan", email: "juan@gmail.com", description: "Amante de los deportes", id: 1, phone: "123-456-7891"),
        Contact(name: "Pedro", email: "pedro@gmail.com", description: "Pedro es un apasionado de la tecnología y la innovación. Desde muy joven, mostró un gran interés por los dispositivos electrónicos y la programación. A lo largo de los años, ha trabajado en diversos proyectos que abarcan desde el desarrollo de aplicaciones móviles hasta la creación de sistemas de inteligencia artificial. Además de su amor por la tecnología, Pedro es un ávido lector y disfruta de la literatura clásica. En su tiempo libre, le gusta practicar deportes al aire libre, como el senderismo y el ciclismo. También es un entusiasta de la música y toca varios instrumentos, incluyendo la guitarra y el piano. Su dedicación y pasión por aprender cosas nuevas lo han llevado a ser una persona muy versátil y con una amplia gama de habilidades.", id: 2, phone: "123-456-7892"),
        Contact(name: "Maria", email: "maria@gmail.com", description: "Chef profesional", id: 3, phone: "123-456-7893"),
        Contact(name: "Ana", email: "ana@gmail.com", description: "Diseñadora gráfica", id: 4, phone: "123-456-7894"),
        Contact(name: "Luis", email: "luis@gmail.com", description: "Ingeniero de software", id: 5, phone: "123-456-7895"),
        Contact(name: "Sofia", email: "sofia@gmail.com", description: "Fotógrafa", id: 6, phone: "123-456-7896"),
        Contact(name: "Miguel", email: "miguel@gmail.com", description: "Músico", id: 7, phone: "123-456-7897"),
        Contact(name: "Lucia", email: "lucia@gmail.com", description: "Bailarina", id: 8, phone: "123-456-7898"),
        Contact(name: "Jorge", email: "jorge@gmail.com", description: "Doctor", id: 9, phone: "123-456-7899"),
        Contact(name: "Elena", email: "elena@gmail.com", description: "Arquitecta", id: 10, phone: "123-456-7800"),
        Contact(name: "Raul", email: "raul@gmail.com", description: "Abogado", id: 11, phone: "123-456-7801"),
        Contact(name: "Laura", email: "laura@gmail.com", description: "Periodista", id: 12, phone: "123-456-7802"),
        Contact(name: "Pablo", email: "pablo@gmail.com", description: "Empresario", id: 13, phone: "123-456-7803"),
        Contact(name: "Alberto", email: "alberto@gmail.com", description: "Profesor de matemáticas", id: 14, phone: "123-456-7804"),
        Contact(name: "Rosa", email: "rosa@gmail.com", description: "Enfermera", id: 15, phone: "123-456-7805"),
        Contact(name: "Daniel", email: "daniel@gmail.com", description: "Piloto de avión", id: 16, phone: "123-456-7806"),
        Contact(name: "Sandra", email: "sandra@gmail.com", description: "Psicóloga", id: 17, phone: "123-456-7807"),
        Contact(name: "David", email: "david@gmail.com", description: "Desarrollador web", id: 18, phone: "123-456-7808"),
        Contact(name: "Marta", email: "marta@gmail.com", description: "Artista plástica", id: 19, phone: "123-456-7809"),
        Contact(name: "Adrian", email: "adrian@gmail.com", description: "Científico", id: 20, phone: "123-456-7810"),
        Contact(name: "Nuria", email: "nuria@gmail.com", description: "Veterinaria", id: 21, phone: "123-456-7811"),
        Contact(name: "Victor", email: "victor@gmail.com", description: "Fotógrafo de naturaleza", id: 22, phone: "123-456-7812"),
        Contact(name: "Patricia", email: "patricia@gmail.com", description: "Diseñadora de moda", id: 23, phone: "123-456-7813"),
      ]
    ),
    ),
    GoRoute(
      path: '/phone',
      builder: (context, state) => PhonePage()
    ),
  ],
);
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: _router,
    );
  }
}