import 'package:flutter/material.dart';
import 'package:blinkit_cloan/repository/widgets/uihelper.dart';

class PrintScreen extends StatelessWidget {
  const PrintScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController searchController = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.amber.shade100,
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 190,
                width: double.infinity,
                color: Color(0XFFF7CB45),
                child: Column(
                  children: [
                    SizedBox(height: 30),
                    Row(
                      children: [
                        SizedBox(width: 20),
                        Uihelper.CustomText(
                          text: "Blinkit in",
                          color: Color(0XFF000000),
                          fontweight: FontWeight.bold,
                          fontsize: 15,
                          fontfamily: "bold",
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(width: 20),
                        Uihelper.CustomText(
                          text: "16 minutes",
                          color: Color(0XFF000000),
                          fontweight: FontWeight.bold,
                          fontsize: 20,
                          fontfamily: "bold",
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(width: 20),
                        Uihelper.CustomText(
                          text: "HOME ",
                          color: Color(0XFF000000),
                          fontweight: FontWeight.bold,
                          fontsize: 14,
                        ),
                        Uihelper.CustomText(
                          text: "- vishal verma Ballia (u.p)",
                          color: Color(0XFF000000),
                          fontweight: FontWeight.bold,
                          fontsize: 14,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                right: 20,
                bottom: 100,
                child: CircleAvatar(
                  radius: 15,
                  backgroundColor: Colors.white,
                  child: Icon(Icons.person, color: Colors.black, size: 20),
                ),
              ),
              Positioned(
                bottom: 30,
                left: 20,
                child: Uihelper.CustomTextField(controller: searchController),
              ),
            ],
          ),
          SizedBox(height: 60),
          Uihelper.CustomText(
            text: "Print Store",
            color: Color(0XFF000000),
            fontweight: FontWeight.w700,
            fontsize: 32,
            fontfamily: "bold",
          ),
          Uihelper.CustomText(
            text: "Blinkit ensures secure prints at every stage",
            color: Color(0XFF9C9C9C),
            fontweight: FontWeight.w700,
            fontsize: 14,
            fontfamily: "bpld",
          ),
          SizedBox(height: 30),
          Padding(
            padding: EdgeInsets.all(10),

            child: Container(
              padding: EdgeInsets.all(10),
              height: 163,
              width: double.infinity,
              color: Color(0XFFFFFFFF),
              
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    
                    children: [
                    Padding(padding: EdgeInsets.only(left: 10,right: 10)),
                       Uihelper.CustomText(
                          text: "Documents",
                          color: Color(0XFF000000),
                          fontweight: FontWeight.w700,
                          fontsize: 14,
                          fontfamily: "bold",
                        ),
                      
                    
                       Uihelper.CustomText(
                          text: "✦  Price starting at rs 3/page",
                          color: Color(0XFF9C9C9C),
                          fontweight: FontWeight.w400,
                          fontsize: 14,
                          fontfamily: "regular",
                        ),
                        Uihelper.CustomText(
                          text: "✦  Paper quality: 70 GSM",
                          color: Color(0XFF9C9C9C),
                          fontweight: FontWeight.w400,
                          fontsize: 14,
                          fontfamily: "regular",
                        ),
                        Uihelper.CustomText(
                          text: "✦  Single side prints",
                          color: Color(0XFF9C9C9C),
                          fontweight: FontWeight.w400,
                          fontsize: 14,
                          fontfamily: "regular",
                        ),
                      SizedBox(height: 10,),
                      Container(
                        height: 40,
                        width: 125,
                        decoration: BoxDecoration(
                          color: Color(0XFF27AF34),
                          borderRadius: BorderRadius.circular(10)
                        ),
                       child:  Center(child: Text("Upload Files",style: TextStyle(color: Color(0XFFFFFFFF)),))
                      )
                    ],
                  ),
                  Spacer(),
                  Uihelper.CustomImage(img: "printimg.png")
                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}
