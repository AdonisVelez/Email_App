import 'package:flutter/material.dart';
import '../model/email.dart';
import '../screens/DetailScreen.dart';

class EmailWidget extends StatelessWidget {
  final Email email;
  final VoidCallback onMarkAsRead;

  const EmailWidget({super.key, required this.email, required this.onMarkAsRead});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        email.subject,
        style: TextStyle(
          fontWeight: email.isRead ? FontWeight.normal : FontWeight.bold,
          color: email.isRead ? Colors.grey : Colors.black, 
        ),
      ),
      subtitle: Text(email.sender),
      trailing: email.isRead
          ? null // No mostrar el punto si ya está leído
          : Container(
              width: 10.0,
              height: 10.0,
              decoration: BoxDecoration(
                color: Colors.red, // Color del punto
                shape: BoxShape.circle,
              ),
            ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailScreen(email: email),
          ),
        ).then((_) {
          // Llama al callback para marcar como leído después de ver el detalle
          onMarkAsRead();
        });
      },
    );
  }
}
