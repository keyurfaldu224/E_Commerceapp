import 'package:ecommerce/screens/create_account.dart';
import 'package:ecommerce/widgets/comman_widegts.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
            'assets/images/background.jpeg',
            fit: BoxFit.cover,
            height: MediaQuery.of(context).size.height,
          ),
          Container(color: Colors.black.withOpacity(0.60)),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Login Now',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.orange,
                      fontSize: 30),
                ),
                SizedBox(
                  height: 30,
                ),
                commanTextfiled(
                  hintText: 'Email',
                  iconData: Icons.email,
                  controller: emailController,
                ),
                SizedBox(
                  height: 20,
                ),
                commanTextfiled(
                  hintText: 'Password',
                  iconData: Icons.security,
                  controller: passwordController,
                ),
                SizedBox(
                  height: 20,
                ),
                commanButton(
                    buttonText: 'LOGIN NOW',
                    onPressed: () {},
                    buttonColor: Color.fromRGBO(251, 173, 62, 1)),
                SizedBox(
                  height: 10,
                ),
                commanButton(
                    buttonText: 'CREATE ACCOUNT',
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => CreateAcoount(),
                      ));
                    },
                    buttonColor: Color.fromRGBO(0, 128, 148, 1))
              ],
            ),
          )
        ],
      ),
    );
  }
}
