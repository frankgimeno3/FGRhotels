import 'package:flutter/material.dart';
import 'package:fgrhotels/pages/login_page.dart';
import 'package:fgrhotels/pages/signup_page.dart';


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
        colorScheme:
        ColorScheme.fromSwatch(primarySwatch: Colors.blue).copyWith(
          background: Colors.grey[100],
        ),
        appBarTheme: const AppBarTheme(
          color: Colors.white,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            elevation: 0,
          ),
        ),
        textTheme: const TextTheme(
          titleLarge: TextStyle(
            color: Colors.grey,
          ),
        ),
        useMaterial3: true,
      ),
      routes: {
        '/login_page': (context) => LoginPage(),
        '/signup_page': (context) => const SignupPage(),
      },
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

  void _navigateToLoginPage() {
     Navigator.of(context).push(MaterialPageRoute(builder: (context) => LoginPage()));
  }

  void _navigateToSignupPage() {
     Navigator.of(context).push(MaterialPageRoute(builder: (context) => const SignupPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            const Text("Menu", style: TextStyle(color: Colors.grey)),
            const SizedBox(width: 8),
            const Text("FGR Hotels", style: TextStyle(color: Colors.grey)),
            const Spacer(),
            ElevatedButton(
              onPressed: _navigateToLoginPage,
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromRGBO(75, 207, 185, 1),
                elevation: 0,
              ),
               child: const Text('Login', style: TextStyle(color: Colors.white)),
            ),

            ElevatedButton(
              onPressed: _navigateToSignupPage,
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromRGBO(75, 207, 185, 1),
                elevation: 0,
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
                Image.asset("assets/images/hero-background.jpg"),
                const SizedBox(height: 20),
                const Center(
                  child: Text(
                    "Pon rumbo a tu próxima aventura",
                    style: TextStyle(
                      fontSize: 24,
                      color: Color.fromRGBO(75, 207, 185, 1),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                const Center(
                  child: Text(
                    "HASTA 25% DTO.",
                    style: TextStyle(
                      fontSize: 16,
                      color: Color.fromARGB(255, 214, 112, 94),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                const Center(
                  child: Text(
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
            child: Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.4,
                  padding: const EdgeInsets.all(12),
                  margin: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: "Fecha de entrada",
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.4,
                  padding: const EdgeInsets.all(12),
                  margin: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: "Fecha de salida",
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );

  }
}