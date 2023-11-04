import 'package:flutter/material.dart';

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
            decoration: BoxDecoration(
                image: DecorationImage(
              image: NetworkImage(
                "https://i.pinimg.com/originals/50/78/a0/5078a05eb1b6847d93383eaa4c0ed500.gif",
              ),
              fit: BoxFit.cover,
            )),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: GestureDetector(
              onTap: () {},
              child: Container(
                alignment: Alignment.center,
                height: 80,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Global.appColor,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Text(
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
