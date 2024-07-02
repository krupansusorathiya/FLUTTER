import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

// debugPaintSizeEnabled = false;
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginScreen(),

    );
  }
}

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController unameController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  bool isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(100.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Login",
                style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Colors.cyan)),
            Text(" "),
            TextField(
              decoration: InputDecoration(
                hintText: "Enter Username",
                labelText: "Enter Username",
              ),
              controller: unameController,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: "Enter Password",
                labelText: "Enter Password",
                suffixIcon: IconButton(
                    onPressed: () {
                    
                      print(isObscure);
                      setState(() {
                        isObscure = ! isObscure;
                        });
                    },
                    icon: Icon(isObscure ? Icons.visibility_off : Icons.visibility)),
              ),
              obscureText: isObscure,
              controller: passwordController,
            ),
            
            ElevatedButton(
              onPressed: () {
                if (unameController.text == passwordController.text) {
                  Text('valid');
                } else {
                 Text('Invalid');
                }
              },
              child: Text("Login"),
            ),
          ],
        ),
      ),
    );
  }
}
// authentication vs authoriation
// if user and password both are same valid user else invalid.
// to clear the text field.
//  add visiblity feater for password feield.
