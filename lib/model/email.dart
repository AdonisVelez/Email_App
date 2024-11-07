// lib/model/email.dart
class Email {
  final int id;
  final String sender;
  final String subject;
  final String body;
  final String date;
  bool isRead;

  Email({
    required this.id,
    required this.sender,
    required this.subject,
    required this.body,
    required this.date,
    this.isRead = false,
  });

  // Método para marcar el email como leído
  void markAsRead() {
    isRead = true;
  }
}

