import 'package:blinkit_cloan/repository/screens/bottomnav/botomnavScreen.dart';
import 'package:blinkit_cloan/repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class Loginscreen extends StatelessWidget {
  const Loginscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text('Login'), centerTitle: true),
      body: Center(
        child: Column(
          children: [
            Container(
              height: 412,
              width: 375,

              child: Uihelper.CustomImage(img: "Blinkit Onboarding Screen.png"),
            ),
            SizedBox(height: 30),
            Uihelper.CustomImage(img: "image 10.png"),
            SizedBox(height: 20),
            Uihelper.CustomText(
              text: "India's last minute app",
              color: Color(0xFF000000),
              fontweight: FontWeight.bold,
              fontsize: 20,
              fontfamily: "bold",
            ),
            SizedBox(height: 20),
            Card(
              elevation: 4,
              child: Container(
                height: 200,
                width: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    Uihelper.CustomText(
                      text: "Vishal",
                      color: Color(0XFF000000),
                      fontweight: FontWeight.w400,
                      fontsize: 15,
                      fontfamily: "ragular",
                    ),
                    SizedBox(height: 5),
                    Uihelper.CustomText(
                      text: "752480XXXX",
                      color: Color(0XFF9C9C9C),
                      fontweight: FontWeight.w700,
                      fontsize: 14,
                      fontfamily: "bold",
                    ),
                    SizedBox(height: 20),
                    SizedBox(
                      height: 48,
                      width: 295,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Botomnavscreen(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0XFFE23744),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Uihelper.CustomText(
                                text: "Login with",
                                color: Color(0XFFFFFFFF),
                                fontweight: FontWeight.w700,
                                fontsize: 14,
                                fontfamily: "bold",
                              ),
                              SizedBox(width: 5),
                              Uihelper.CustomImage(img: "image 9.png"),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 8),
                    Uihelper.CustomText(
                      text:
                          "Access your saved addresses from Zomato automatically!",
                      color: Color(0XFF9C9C9C),
                      fontweight: FontWeight.w400,
                      fontsize: 10,
                      fontfamily: "regular",
                    ),
                    SizedBox(height: 10),
                    Uihelper.CustomText(
                      text: "or login with phone number",
                      color: Color(0XFF269237),
                      fontweight: FontWeight.w400,
                      fontsize: 14,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
