// lib/model/backend.dart
import 'email.dart';

class Backend {
  // Lista de correos electrónicos simulada
  final List<Email> _emails = [
    Email(
      id: 1,
      sender: 'functional@programming.com',
      subject: 'Functional programming',
      body: 'In computer science, functional programming is a programming paradigm where programs are constructed by applying and composing functions. It is a declarative programming paradigm, which means programming is done with expressions or declarations rather than statements. Functional programming focuses on the concept of immutability, where data cannot be changed, and on the use of pure functions that do not have side effects. This paradigm is gaining popularity because of its effectiveness in handling concurrency and ease of reasoning about programs.',
      date: '2020-10-03 19:43',
    ),
    Email(
      id: 2,
      sender: 'declarative@programming.com',
      subject: 'Declarative programming',
      body: 'Declarative programming is a style of programming where you write expressions that describe what you want to achieve, rather than detailing the steps to achieve it. Popular examples of declarative programming languages include SQL for querying databases and HTML for defining the structure of web pages. By focusing on what rather than how, declarative programming simplifies code and makes it easier to understand and maintain. However, it may not always offer the same performance or flexibility as imperative programming, where you specify the exact sequence of operations.',
      date: '2020-10-07 10:30',
    ),
    Email(
      id: 3,
      sender: 'oop@programming.com',
      subject: 'Object-Oriented Programming',
      body: 'Object-oriented programming (OOP) is a programming paradigm based on the concept of "objects", which are data structures that contain data, in the form of fields, and code, in the form of procedures or methods. The key principles of OOP are encapsulation, inheritance, and polymorphism. Encapsulation ensures that the internal representation of an object is hidden from the outside. Inheritance allows a new class to inherit the properties and methods of an existing class. Polymorphism enables a single function to operate on different types of objects. OOP is widely used for building scalable and maintainable software applications.',
      date: '2020-10-10 15:20',
    ),
    Email(
      id: 4,
      sender: 'java@tips.com',
      subject: 'Java Programming Tips',
      body: 'Java is one of the most widely-used programming languages in the world, known for its portability, performance, and extensive libraries. To write efficient Java code, it is important to follow best practices, such as using StringBuilder for string concatenation in loops, leveraging the power of the Java Collections framework, and minimizing the use of synchronized blocks to avoid performance bottlenecks. Additionally, understanding garbage collection and how to optimize memory usage can significantly enhance the performance of Java applications. Stay up to date with the latest updates and features in the Java ecosystem to keep your skills sharp.',
      date: '2020-11-01 09:15',
    ),
    Email(
      id: 5,
      sender: 'flutter@updates.com',
      subject: 'Flutter 2.0 Released!',
      body: 'Flutter 2.0 is here, and it brings a host of new features and improvements that empower developers to build stunning, cross-platform applications. One of the most exciting additions is support for web and desktop applications, making Flutter a truly multi-platform framework. Performance enhancements, new widgets, and improvements to existing APIs make development even more seamless. With sound null safety, developers can write more reliable and error-free code. The Flutter community continues to grow, and with these updates, Flutter remains a top choice for modern app development.',
      date: '2021-03-03 08:00',
    ),
    Email(
      id: 6,
      sender: 'kotlin@tutorials.com',
      subject: 'Kotlin Basics',
      body: 'Kotlin is a modern programming language that is fully interoperable with Java and has become the preferred language for Android app development. It offers features like null safety, extension functions, and a more concise syntax compared to Java. Learning Kotlin basics is essential for any aspiring Android developer. You should start by understanding data types, control flow, and how to define functions and classes. Once you are comfortable with the fundamentals, explore more advanced features like coroutines for asynchronous programming and DSLs (Domain-Specific Languages) to simplify complex tasks.',
      date: '2021-04-15 11:45',
    ),
    Email(
      id: 7,
      sender: 'react@newsletter.com',
      subject: 'React: New Features',
      body: 'The latest version of React includes several exciting new features aimed at improving performance and developer experience. Among these is the introduction of React Concurrent Mode, which allows for smoother and more responsive user interfaces by enabling asynchronous rendering. Another key feature is React Suspense, which simplifies handling asynchronous data fetching. Hooks, such as useState and useEffect, have become fundamental tools for managing state and side effects in functional components. Keep an eye out for these updates and explore how they can make your React projects even more efficient and enjoyable to work on.',
      date: '2021-05-20 14:30',
    ),
    Email(
      id: 8,
      sender: 'python@dataclasses.com',
      subject: 'Using Data Classes in Python',
      body: 'Data classes in Python, introduced in Python 3.7, are a handy feature for managing structured data. They reduce boilerplate code by automatically generating special methods like __init__, __repr__, and __eq__. To define a data class, use the @dataclass decorator and specify the fields of your class. Data classes support type hints, making your code more readable and easier to debug. If you are working with large data sets, you can take advantage of features like default values and field ordering. Data classes are perfect for tasks such as data modeling and simplifying the process of handling complex data structures.',
      date: '2021-06-10 16:00',
    ),
    Email(
      id: 9,
      sender: 'flutter@community.com',
      subject: 'Join the Flutter Community',
      body: 'Flutter is not just a framework; it is a thriving community of passionate developers who collaborate to build amazing applications. By joining the Flutter community, you gain access to a wealth of resources, from tutorials and documentation to open-source projects and forums. Participate in local meetups, contribute to Flutter plugins, and share your knowledge with others. Whether you are a seasoned developer or just starting out, there is always something to learn and explore. Together, we can make app development faster, easier, and more enjoyable for everyone!',
      date: '2021-07-01 12:15',
    ),
    Email(
      id: 10,
      sender: 'devops@tools.com',
      subject: 'Top DevOps Tools in 2022',
      body: 'DevOps practices are essential for modern software development, and having the right tools can make a significant difference in your workflow. Some of the top DevOps tools for 2022 include Jenkins for continuous integration, Kubernetes for container orchestration, and Terraform for infrastructure as code. Monitoring and observability tools like Prometheus and Grafana help ensure system reliability. Security should also be a priority, with tools like HashiCorp Vault for secrets management and SonarQube for code quality analysis. Adopting these tools and practices can improve collaboration between development and operations teams, leading to more efficient and reliable software delivery.',
      date: '2021-08-05 17:45',
    ),
  ];

  // Método para obtener la lista de correos
  Future<List<Email>> getEmails() async {
    // Simula un retraso de red
    await Future.delayed(Duration(seconds: 1));
    return _emails;
  }

  // Método para marcar un correo como leído
  void markEmailAsRead(int id) {
    for (var email in _emails) {
      if (email.id == id) {
        email.markAsRead();
        break;
      }
    }
  }

  // Método para eliminar un correo
  void deleteEmail(int id) {
    _emails.removeWhere((email) => email.id == id);
  }
}
