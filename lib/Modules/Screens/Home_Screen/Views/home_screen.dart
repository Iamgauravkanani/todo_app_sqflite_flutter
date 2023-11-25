import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../Utils/Constants/global.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            height: 600,
            width: 400,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "lib/Modules/Utils/Assets/home_screen.gif",
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: GestureDetector(
              onTap: () {
                Get.toNamed('/todo');
              },
              child: Container(
                alignment: Alignment.center,
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 0),
                      color: Colors.grey,
                      blurRadius: 9,
                      spreadRadius: 3,
                    )
                  ],
                  color: Global.appColor,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Text(
                  "Add Your ToDo",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
