import 'package:flutter/material.dart';
import 'package:fgrhotels/pages/login_page.dart';
import 'package:fgrhotels/pages/signup_page.dart';
import 'package:fgrhotels/pages/forgot_password.dart';
import 'package:fgrhotels/pages/dashboard_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FGR Hotels',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue).copyWith(
          background: Colors.white, // Fondo en blanco
        ),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'FGR Hotels'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(75, 207, 185, 1), // Color de la barra superior
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("FGR Hotels", style: TextStyle(color: Colors.white)),
            const Spacer(),
            ElevatedButton(
              onPressed: () {
                // Lógica para el botón de login
              },
              style: ElevatedButton.styleFrom(
                primary: const Color.fromRGBO(75, 207, 185, 1),
                elevation: 0, // Sin sombra
              ),
              child: const Text('Login', style: TextStyle(color: Colors.white)),
            ),
            ElevatedButton(
              onPressed: () {
                // Lógica para el botón de signup
              },
              style: ElevatedButton.styleFrom(
                primary: const Color.fromRGBO(75, 207, 185, 1),
                elevation: 0, // Sin sombra
              ),
              child: const Text('Signup', style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            margin: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Image.asset("assets/images/hero-background.jpg"), // Tu imagen de fondo
                const SizedBox(height: 20),
                Center(
                  child: const Text(
                    "Pon rumbo a tu próxima aventura",
                    style: TextStyle(
                      fontSize: 24,
                      color: Color.fromRGBO(75, 207, 185, 1),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Center(
                  child: const Text(
                    "HASTA 25% DTO.",
                    style: TextStyle(
                      fontSize: 16,
                      color: Color.fromARGB(255, 214, 112, 94),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Center(
                  child: const Text(
                    "Adelántate y reserva tus vacaciones 2024",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),

          ),
          Container(
            padding: const EdgeInsets.all(20),
            margin: const EdgeInsets.all(20),
            decoration: BoxDecoration(
               color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: Column(
              children: [
                // Aquí puedes agregar tus elementos de búsqueda y fechas
                // Por ejemplo, TextField, DatePicker, y un botón de búsqueda
              ],
            ),
          ),
        ],
      ),
    );
  }
}