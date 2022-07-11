import 'package:flutter/material.dart';
import 'package:motus_flutter_cda/ui/screens/login/login_view_model.dart';
import 'package:provider/provider.dart';
import 'package:beamer/beamer.dart';
import 'dart:io';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController loginController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Consumer<LoginViewModel>(builder: ((context, viewModel, child) {
        viewModel.addListener(() {
          if (viewModel.player != null) {
            context.beamToNamed("/home");
          }
        });
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.all(8),
                    child: TextField(
                        obscureText: false,
                        controller: loginController,
                        keyboardType: TextInputType.emailAddress,
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            fillColor: Colors.white,
                            filled: true,
                            labelText: "Login",
                            labelStyle: TextStyle(
                                color: Colors.black,
                                backgroundColor: Colors.white,
                                fontSize: 20))),
                  ),
                  Container(
                    margin: const EdgeInsets.all(8),
                    child: TextField(
                      obscureText: false,
                      controller: passwordController,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          fillColor: Colors.white,
                          filled: true,
                          labelText: "Password",
                          labelStyle: TextStyle(
                              color: Colors.black,
                              backgroundColor: Colors.white,
                              fontSize: 20)),
                    ),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        viewModel.signIn(
                            email: loginController.value.text,
                            password: passwordController.value.text);
                      },
                      child: const Text("Se connecter"))
                ],
              ),
            )
          ],
        );
      })),
    );
  }
}
