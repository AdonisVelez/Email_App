import 'package:flutter/material.dart';
import '../model/email.dart';
import '../widgets/email_widget.dart';
import '../model/backend.dart';

class ListScreen extends StatefulWidget {
  const ListScreen({super.key});

  @override
  _ListScreenState createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  List<Email> emails = [];

  @override
  void initState() {
    super.initState();
    loadEmails();
  }

  void loadEmails() async {
    emails = await Backend().getEmails();
    setState(() {});
  }

  void markAsRead(int id) {
    Backend().markEmailAsRead(id);
    setState(() {
      emails.firstWhere((email) => email.id == id).isRead = true;
    });
  }

  void deleteEmail(int id) {
    Backend().deleteEmail(id);
    setState(() {
      emails.removeWhere((emails) => emails.id == id);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Mock Mail',
          style: TextStyle(
            color: Colors.yellow, // Cambia el color aquí
          ),
        ),
        backgroundColor: Colors.blueGrey, // Cambia el color de fondo del AppBar si lo deseas
        iconTheme: IconThemeData(color: Colors.yellow),
        centerTitle: true, // Color de los iconos en el AppBar
      ),
      body: ListView.builder(
        itemCount: emails.length,
        itemBuilder: (context, index) {
          final email = emails[index];
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
            child: Dismissible(
              key: Key(email.id.toString()),
              direction: DismissDirection.endToStart,
              onDismissed: (direction) => deleteEmail(email.id),
              background: Container(color: Colors.red),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0), // Bordes redondeados
                ),
                elevation: 2.0, // Sombras para que parezca un rectángulo elevado
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: EmailWidget(
                    email: email,
                    onMarkAsRead: () => markAsRead(email.id),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
