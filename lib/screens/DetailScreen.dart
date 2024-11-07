import 'package:flutter/material.dart';
import '../model/email.dart';

class DetailScreen extends StatelessWidget {
  final Email email;

  const DetailScreen({super.key, required this.email});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(email.subject),
        foregroundColor: Colors.yellow,
         backgroundColor: Colors.blueGrey,
         iconTheme: IconThemeData(color: Colors.yellow),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Bloque del remitente
            Text(
              'From: ${email.sender}',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            Divider(), // Línea divisoria
            // Bloque de la fecha
            Text(
              '${email.subject}',
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
            Text(
               'Date: ${email.date}',
              style: TextStyle(color: Colors.grey[600], fontSize: 15),
            ),
            Divider(), // Línea divisoria
            // Bloque del cuerpo del mensaje
            SizedBox(height: 16),
            Text(
              email.body,
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
