import 'package:flutter/material.dart';
import 'package:flutter_360/screens/auth/components/text_input_field.dart';
import 'package:flutter_360/screens/auth/sign_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  // 임시
  // 사이즈 비율 조정해야 함.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 60,
                ),
                SvgPicture.asset(
                  'assets/fire.svg',
                  width: 150,
                  height: 150,
                ),
                SizedBox(
                  height: 60,
                ),
                Text(
                  '360° HOTPLACE',
                  style: GoogleFonts.hurricane(
                    fontSize: 35,
                    letterSpacing: 1.5,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 60,
                ),
                Container(
                  child: TextInputField(
                    controller: _emailController,
                    labelText: 'Email',
                    icon: Icons.mail,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  child: TextInputField(
                    controller: _passwordController,
                    labelText: 'Password',
                    icon: Icons.lock,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account? "),
                    InkWell(
                      onTap: () {
                        Get.to(() => SignScreen());
                      },
                      child: Text(
                        "Register",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: 100,
                  height: 100,
                  child: InkWell(
                    onTap: () {},
                    child: Center(
                      child: Icon(
                        Icons.arrow_right,
                        size: 100,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
