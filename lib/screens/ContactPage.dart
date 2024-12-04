import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:navigation_app/contact.dart';
import 'package:navigation_app/screens/ContactDetailPage.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactPage extends StatefulWidget {
  List<Contact> _contacts;

  ContactPage(this._contacts, {super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          if (value == 0) {
            GoRouter.of(context).go('/');
          }
          else{
            GoRouter.of(context).go('/phone');
          }
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.contacts),
            label: 'Contacts',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.call),
            label: 'Call',
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              String name = '';
              String email = '';
              String description = '';
              String phone = '';
              return AlertDialog(
                title: Text('Add Contact'),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextField(
                      decoration: InputDecoration(labelText: 'Name'),
                      onChanged: (value) {
                        name = value;
                      },
                    ),
                    TextField(
                      decoration: InputDecoration(labelText: 'Email'),
                      onChanged: (value) {
                        email = value;
                      },
                    ),
                    TextField(
                      decoration: InputDecoration(labelText: 'Description'),
                      onChanged: (value) {
                        description = value;
                      },
                    ),
                    TextField(
                      decoration: InputDecoration(labelText: 'Phone'),
                      onChanged: (value) {
                        phone = value;
                      },
                    ),
                  ],
                ),
                actions: [
                  TextButton(
                    child: Text('Cancel'),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                  TextButton(
                    child: Text('Add'),
                    onPressed: () {
                      setState(() {
                        widget._contacts.add(Contact(
                          id: widget._contacts.length,
                          name: name,
                          email: email,
                          description: description,
                          phone: phone,
                        ));
                      });
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              );
            },
          );
        },
      ),
      appBar: AppBar(
        title: const Text('Contacts'),
      ),
      body: ListView(
        children: widget._contacts
            .map((contact) => ListTile(
                  trailing: IconButton(
                    icon: Icon(Icons.call),
                    onPressed: () {
                      launchUrl(Uri.parse('tel:${contact.phone}'));
                      print("Tlf: Llamar a ${contact.name} ${contact.phone}");
                    },
                  ),
                  title: Text(contact.name),
                  subtitle: Text(contact.email),
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(contact.url),
                  ),
                  onTap: () {
                    // TODO: Router
                    // context.go(contact.id.toString());
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ContactDetailPage(contact: contact),
                    ));
                  },
                ))
            .toList(),
      ),
    );
  }
}
