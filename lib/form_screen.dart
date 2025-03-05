import 'package:flutter/material.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({super.key});

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  bool obscureTextPassword = true;
  bool obscureTextConfirmPassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form Screen'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const TextField(
                decoration: InputDecoration(
                  icon: Icon(Icons.person),
                  hintText: 'Username',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 8),
              TextField(
                obscureText: obscureTextPassword,
                decoration: InputDecoration(
                  icon: const Icon(Icons.password),
                  hintText: 'Password',
                  border: const OutlineInputBorder(),
                  suffixIcon: GestureDetector(
                    onTap: () {
                      setState(() {
                        obscureTextPassword = !obscureTextPassword;
                      });
                    },
                    child: Icon(obscureTextPassword
                        ? Icons.visibility
                        : Icons.visibility_off),
                  ),
                ),
              ),
              const SizedBox(height: 8),
              TextField(
                obscureText: obscureTextConfirmPassword,
                decoration: InputDecoration(
                  icon: const Icon(Icons.password),
                  hintText: 'Confirm Password',
                  border: const OutlineInputBorder(),
                  suffixIcon: GestureDetector(
                    onTap: () {
                      setState(() {
                        obscureTextConfirmPassword =
                            !obscureTextConfirmPassword;
                      });
                    },
                    child: Icon(obscureTextConfirmPassword
                        ? Icons.visibility
                        : Icons.visibility_off),
                  ),
                ),
              ),
              const SizedBox(height: 8),
              ElevatedButton(onPressed: () {}, child: const Text('Check Value'))
            ],
          ),
        ),
      ),
    );
  }
}
