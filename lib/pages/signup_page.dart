// ignore_for_file: sort_child_properties_last, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

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
                // ** SignUp Image **
                Image.asset(
                  "images/signup.png",
                  height: 270,
                ),
                const SizedBox(height: 20),
                // ** Title **
                Text(
                  "انشاء حساب جديد",
                  style: GoogleFonts.notoKufiArabic(
                      fontSize: 28, fontWeight: FontWeight.bold),
                  textDirection: TextDirection.rtl,
                ),

                const SizedBox(height: 30),

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

                // ** Re Password Textfield **

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
                            border: InputBorder.none,
                            hintText: "اعادة كلمة المرور"),
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.right,
                        style: GoogleFonts.notoKufiArabic(fontSize: 14),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 15),

                // ** SignUp Button **

                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/login");
                  },
                  child: Text(
                    'انشاء الحساب',
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

                // ** LogIn Button **

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, "/login");
                      },
                      child: Text(
                        'تسجيل الدخول',
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.right,
                        style: GoogleFonts.notoKufiArabic(
                          fontWeight: FontWeight.bold,
                          color: Colors.deepPurple[300],
                        ),
                      ),
                    ),
                    Text(
                      ' لديك حساب؟',
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
