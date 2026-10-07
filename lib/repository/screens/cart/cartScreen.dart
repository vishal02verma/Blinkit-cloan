import 'package:blinkit_cloan/repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class Cartscreen extends StatelessWidget {
  // const Cartscreen({super.key});
  // List<String> images =
  // [
  //   Uihelper.CustomImage(img: "image 45.png")

  // ];
  @override
  Widget build(BuildContext context) {
    TextEditingController searchController = TextEditingController();
    Widget productCard({
      required String image,
      required String name,
      required String price,
    }) {
      return Column(
        children: [
          Uihelper.CustomImage(img: image),
          Uihelper.CustomText(
            text: name,
            color: Color(0XFF000000),
            fontweight: FontWeight.w600,
            fontsize: 12,
          ),
          Uihelper.CustomText(
            text: price,
            color: Color(0XFF000000),
            fontweight: FontWeight.w600,
            fontsize: 12,
          ),
        ],
      );
    }

    return Scaffold(
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
          SizedBox(height: 5),
          Uihelper.CustomImage(img: "shopping-cart (1) 1 (1).png"),
          SizedBox(height: 10),
          Uihelper.CustomText(
            text: "Reordering will be easy",
            color: Color(0XFF000000),
            fontweight: FontWeight.w700,
            fontsize: 16,
          ),
          Uihelper.CustomText(
            text: "Items you order will show up here so you can buy",
            color: Color(0XFF000000),
            fontweight: FontWeight.w500,
            fontsize: 10,
          ),
          Uihelper.CustomText(
            text: "them again easily.",
            color: Color(0XFF000000),
            fontweight: FontWeight.w500,
            fontsize: 10,
          ),
          SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Column(
                children: [
                  Uihelper.CustomText(
                    text: "Bestsellers",
                    color: Color(0XFF000000),
                    fontweight: FontWeight.w600,
                    fontsize: 16,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      children: [
                        Expanded(
                          child: productCard(
                            image: "image 45.png",
                            name: "Amul Taaza Toned\nFresh Milk",
                            price: "₹27",
                          ),
                        ),

                        SizedBox(width: 10),

                        Expanded(
                          child: productCard(
                            image: "image 44.png",
                            name: "Potato (Aloo)",
                            price: "₹37",
                          ),
                        ),

                        SizedBox(width: 10),

                        Expanded(
                          child: productCard(
                            image: "image 46.png",
                            name: "Hybrid Tomato",
                            price: "₹37",
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
