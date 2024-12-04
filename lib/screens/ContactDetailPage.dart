import 'package:flutter/material.dart';
import 'package:navigation_app/contact.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactDetailPage extends StatelessWidget {
  final Contact contact;

  const ContactDetailPage({super.key, required this.contact});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: ListView(
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(contact.url),
            ),
            const SizedBox(height: 16),
            Text(contact.name,
                style:
                    const TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            Text(contact.email,
                style: const TextStyle(fontSize: 20, color: Colors.grey)),
            const SizedBox(height: 8),
            Text(contact.description, style: const TextStyle(fontSize: 20)),
            const Divider(height: 32),
            ElevatedButton(
              onPressed: () {
                launchUrl(Uri.parse('tel:${contact.phone}'));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.phone),
                  const SizedBox(width: 10),
                  Text(contact.phone, style: const TextStyle(fontSize: 20)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
