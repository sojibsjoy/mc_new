import 'package:flutter/material.dart';
import 'package:master_cooking/pages/registration.dart';
import 'package:master_cooking/pages/profile.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                labelText: "Email",
                prefixIcon: const Icon(Icons.email),
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(
              height: 15,
            ),
            TextFormField(
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                labelText: "Password",
                prefixIcon: const Icon(Icons.lock),
              ),
              keyboardType: TextInputType.visiblePassword,
              obscureText: true,
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Forget Password",
                  ),
                ),
              ],
            ),
            TextButton.icon(
              // alignment: Alignment.center,
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  Colors.amber[300],
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Profile(),
                  ),
                );
              },
              icon: const Icon(Icons.send),
              label: const Text(
                "Submit",
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => RegistrationPage(),
                  ),
                );
              },
              child: const Text(
                "Don,t have an Account? Sign Up",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 15,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
