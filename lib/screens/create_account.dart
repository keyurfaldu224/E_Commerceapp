import 'package:ecommerce/widgets/comman_widegts.dart';
import 'package:flutter/material.dart';

class CreateAcoount extends StatefulWidget {
  @override
  _CreateAcoountState createState() => _CreateAcoountState();
}

class _CreateAcoountState extends State<CreateAcoount> {
  TextEditingController userNameController = TextEditingController();
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
                  'Create Account',
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
                    buttonText: 'CREATE ACCOUNT',
                    onPressed: () {},
                    buttonColor: Color.fromRGBO(251, 173, 62, 1)),
                SizedBox(
                  height: 10,
                ),
                commanButton(
                    buttonText: 'LOGIN NOW',
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    buttonColor: Color.fromRGBO(0, 128, 148, 1)),
              ],
            ),
          )
        ],
      ),
    );
  }
}
