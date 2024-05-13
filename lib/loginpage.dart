import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App Store'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.directions_car, size: 100.0, color: Colors.blue),
            SizedBox(height: 48.0),
            TextField(
              maxLines: 1,
              decoration: InputDecoration(
                hintText: 'Masukkan Alamat Email',
                labelText: 'Email',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50.0),
                ),
              ),
            ),
            SizedBox(height: 12.0),
            TextField(
              maxLines: 1,
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Kata Sandi',
                labelText: 'Kata Sandi',
                suffixIcon: Icon(Icons.visibility_off),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50.0),
                ),
              ),
            ),
            SizedBox(height: 12.0),
            Row(
              children: [
                Checkbox(
                  value: _rememberMe,
                  onChanged: (bool? value) {
                    setState(() {
                      _rememberMe = value!;
                    });
                  },
                ),
                Text('Ingat saya'),
              ],
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Masuk'),
            ),
            TextButton(
              onPressed: () {},
              child: Text('Lupa sandi?'),
            ),
            Divider(),
            SignInButton(
              Buttons.Google,
              text: "Masuk dengan Google",
              onPressed: () {},
            ),
            TextButton(
              onPressed: () {},
              child: Text('Tidak memiliki akun? Buat Akun'),
            ),
          ],
        ),
      ),
    );
  }
}
