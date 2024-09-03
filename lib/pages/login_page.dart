// ignore_for_file: sort_child_properties_last, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // ** Main Image **
                Image.asset(
                  "images/doctor.png",
                  height: 200,
                ),
                const SizedBox(height: 20),
                // ** App Title **
                Text(
                  "عيادتي",
                  style: GoogleFonts.notoKufiArabic(
                      fontSize: 40, fontWeight: FontWeight.bold),
                  textDirection: TextDirection.rtl,
                ),

                const SizedBox(height: 50),

                // ** Email Textfield **
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: TextField(
                        decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: "البريد الالكتروني"),
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.right,
                        style: GoogleFonts.notoKufiArabic(fontSize: 14),
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 10),

                // ** Password Textfield **

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: TextField(
                        obscureText: true,
                        decoration: const InputDecoration(
                            border: InputBorder.none, hintText: "كلمة المرور"),
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.right,
                        style: GoogleFonts.notoKufiArabic(fontSize: 14),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 15),

                // ** LogIn Button **

                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/home");
                  },
                  child: Text(
                    'تسجيل الدخول',
                    textDirection: TextDirection.rtl,
                    style: GoogleFonts.notoKufiArabic(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll(Colors.deepPurple[300]),
                      padding: MaterialStatePropertyAll(
                          EdgeInsets.symmetric(horizontal: 120, vertical: 9)),
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)))),
                ),
                const SizedBox(height: 25),

                // ** SignUp Button **

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, "/signup");
                      },
                      child: Text(
                        'انشاء حساب جديد',
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.right,
                        style: GoogleFonts.notoKufiArabic(
                          fontWeight: FontWeight.bold,
                          color: Colors.deepPurple[300],
                        ),
                      ),
                    ),
                    Text(
                      'ليس لديك حساب؟',
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.right,
                      style: GoogleFonts.notoKufiArabic(
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
