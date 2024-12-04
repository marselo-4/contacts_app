
import 'dart:math';

class Contact {
  final int id;
  final String name;
  final String email;
  final String description;
  final String phone;
  final String url = "https://picsum.photos/200/300?random=${Random().nextInt(100)}'";

  Contact({
    required this.id,
    required this.name,
    required this.email,
    required this.description,
    required this.phone
  });

}