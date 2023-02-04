import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: const EdgeInsets.all(28),
      color: Colors.blue[200],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.people,
            size: MediaQuery.of(context).size.height * 0.2,
          ),
          const TextField(
            decoration: InputDecoration(
              label: Text('Login'),
            ),
          ),
          const TextField(
            decoration: InputDecoration(
              label: Text('Senha'),
            ),
            obscureText: true,
          ),
          const SizedBox(height: 15),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Login'),
          )
        ],
      ),
    ));
  }
}
