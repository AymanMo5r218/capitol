
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  String email = '';
  String password = '';

  void _submitLogin() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      // TODO: Call API or Firebase to login
      print('Login with \$email and \$password');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              TextFormField(
                decoration: InputDecoration(labelText: 'Email'),
                onSaved: (value) => email = value!,
                validator: (value) =>
                    value!.isEmpty ? 'Please enter your email' : null,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Password'),
                obscureText: true,
                onSaved: (value) => password = value!,
                validator: (value) =>
                    value!.isEmpty ? 'Please enter your password' : null,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: _submitLogin,
                child: Text('Login'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/signup');
                },
                child: Text('Don’t have an account? Sign Up'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
