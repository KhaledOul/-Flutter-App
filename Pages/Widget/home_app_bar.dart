import 'package:e_book/Config/colors.dart';
import 'package:e_book/Pages/ProfilePage/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
          crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
            onTap: () {
              Scaffold.of(context).openDrawer();
            },
            child: Image.asset("lib/Asset/Icons/menu.png",height: 20,)),
        Text(
          "DigitBook",
          style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                color: Theme.of(context).colorScheme.background,
              ),
        ),
        InkWell(
          onTap: (){
            Get.to(ProfilePage());
          },
          child: CircleAvatar(
                                backgroundColor: Theme.of(context).colorScheme.background,
                                child: const Text(
                                  "K",
                                  style: TextStyle(color: primaryColor),
                                  ),
                                ),
        ),
                              
       
      ],

    );
  }
}