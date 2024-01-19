import 'package:firebase_auth/firebase_auth.dart';
import 'package:fgrhotels/auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final User? user = Auth().currentUser;

  Future<void> signOut() async {
    await Auth().signout(); // Cambié "signout" a "signOut" para coincidir con el nombre correcto del método.
  }

  Widget _title() {
    return const Text('Firebase Auth');
  }

  Widget _userUid() { // Cambié "_userUid" para que coincida con el nombre del método.
    return Text(user?.email ?? 'User email');
  }

  Widget _signOutButton() {
    return ElevatedButton(onPressed: signOut, child: const Text('Sign Out'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _title(),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _userUid(),
            _signOutButton()
          ],
        ),
      ),
    );
  }
}