import 'package:flutter/material.dart';
import 'package:fgrhotels/pages/login_page.dart';
import 'package:fgrhotels/pages/signup_page.dart';
import 'package:fgrhotels/pages/forgot_password.dart';
import 'package:fgrhotels/pages/dashboard_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FGR Hotels',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      routes: {
        '/': (context) => const MyHomePage(title: 'FGR Hotels'),
        '/login': (context) => LoginPage(),
        '/signup': (context) => SignupPage(),
        '/forgot_password': (context) => ForgotPasswordPage(),
        '/dashboard_page': (context) => DashboardPage(),
      },
    );
  }
}


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/hero-background.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _buildMenuButton('Login'),
              _buildMenuButton('Signup'),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMenuButton(String title) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.white.withOpacity(0.2),
          onPrimary: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          side: BorderSide(color: Colors.white),
        ),
        onPressed: () {
          switch (title) {
            case 'Login':
              Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
              break;
            case 'Signup':
              Navigator.push(context, MaterialPageRoute(builder: (context) => SignupPage()));
              break;
          }
        },
        child: Text(title),
      ),
    );
  }


}