import 'package:flutter/material.dart';
import 'package:loginpage/components/login/custom_login_bottom_component.dart';
import 'package:loginpage/controllers/login_controller.dart';
import 'package:loginpage/widgets/custom_text_field_widget.dart';

class LoginPage extends StatelessWidget {
  final LoginController _controller = LoginController();
  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: const EdgeInsets.all(28),
      color: const Color.fromARGB(255, 196, 199, 155),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.people,
            size: MediaQuery.of(context).size.height * 0.2,
          ),
          CustomTextFieldWidget(
            label: 'login: "adm"',
            onChanged: _controller.setLogin,
          ),
          CustomTextFieldWidget(
            label: 'senha: "123"',
            onChanged: _controller.setPass,
            obscureText: true,
          ),
          const SizedBox(height: 15),
          CustomLoginButtonComponent(loginController: _controller),
        ],
      ),
    ));
  }
}
