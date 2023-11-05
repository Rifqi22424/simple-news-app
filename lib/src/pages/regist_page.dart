import 'package:flutter/material.dart';
import 'package:news_app/src/pages/login_page.dart';

class RegistrationPage extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  register(BuildContext context) {
    final String email = emailController.text;
    final String password = passwordController.text;

    print('Post $email dan $password ke server');
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => LoginPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Registration')),
      body: Column(
        children: <Widget>[
          TextFormField(
            controller: emailController,
            decoration: InputDecoration(labelText: 'Email'),
          ),
          
          TextFormField(
            obscureText: true,
            controller: passwordController,
            decoration: InputDecoration(labelText: 'Password'),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              register(context);
            },
            child: Text('Register'),
          ),
          SizedBox(height: 20),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => LoginPage(),
              ));
            },
            child: Text('Login'),
          ),
        ],
      ),
    );
  }
}
