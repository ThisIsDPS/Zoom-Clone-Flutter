import 'package:flutter/material.dart';
import 'package:zoom_clone_flutter/resources/auth_methods.dart';
import 'package:zoom_clone_flutter/widgets/custom_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final AuthMethods _authMethods = AuthMethods();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Start or join a meeting',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 239, 238, 238),
              ),
            ),
            const SizedBox(
              height: 44,
            ),
            Image.asset(
              'assets/images/onboarding.jpg',
              width: 360,
            ),
            const SizedBox(
              height: 24,
            ),
            CustomButton(
              text: 'Google Sign In',
              onPressed: () async {
                print('hello');
                bool res = await _authMethods.signInWithGoogle(context);
                if(res){
                  Navigator.pushNamed(context, '/home');
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
