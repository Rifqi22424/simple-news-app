import 'package:flutter/material.dart';
import 'package:news_app/src/pages/news_page.dart';
import 'package:news_app/src/pages/regist_page.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  login(BuildContext context) {
    final String email = emailController.text;
    final String password = passwordController.text;
    //memvalidasi login
    print('Post $email dan $password ke server');
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => NewsPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login')),
      body: Column(
        children: <Widget>[
          TextFormField(
            controller: emailController,
            decoration: InputDecoration(labelText: 'Email'),
          ),
          TextFormField(
            controller: passwordController,
            decoration: InputDecoration(labelText: 'Password'),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              login(context);
            },
            child: Text('Login'),
          ),
          SizedBox(height: 20),
          GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => RegistrationPage(),
                ));
              },
              child: Text('Regist'))
        ],
      ),
    );
  }
}
