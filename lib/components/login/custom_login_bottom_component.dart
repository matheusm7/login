import 'package:flutter/material.dart';
import 'package:loginpage/controllers/login_controller.dart';

class CustomLoginButtonComponent extends StatelessWidget {
  final LoginController loginController;
  const CustomLoginButtonComponent({super.key, required this.loginController});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: loginController.inLoader,
      builder: (_, inLoader, __) => inLoader
          ? const CircularProgressIndicator()
          : ElevatedButton(
              onPressed: () {
                loginController.auth().then(
                  (result) {
                    if (result) {
                      Navigator.of(context).pushReplacementNamed('/homepage');
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Falha ao realizar login'),
                          backgroundColor: Colors.red,
                          duration: Duration(seconds: 3),
                        ),
                      );
                    }
                  },
                );
              },
              child: const Text('Login'),
            ),
    );
  }
}
