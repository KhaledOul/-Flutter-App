import 'package:e_book/Components/my_button.dart';
import 'package:e_book/Pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
            children: [
                Container(
                height: 500,
                padding: const EdgeInsets.all(20),
                color: Theme.of(context).colorScheme.primary,
                child: Row( mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(height: 50,),
                        Image.asset("lib/Asset/Images/4004113.png", width: 200,
                        ),
                        const SizedBox(height: 50,),
                        Text(
                          "DigitBook",
                          style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                            color : Theme.of(context).colorScheme.background,
                          ),
                          ),
                          const SizedBox(height: 50,),
                        Flexible(
                          child: Text(
                            "Here you can find the best E-book ",
                            style: Theme.of(context).textTheme.labelSmall?.copyWith(
                              color : Theme.of(context).colorScheme.background,
                            ), 
                            ),
                        ),
                      
                        ],
                      ),
                    ),
                    
                    
              ],),
                ),
                Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Disclaimer",
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Flexible(
                      child: Text(
                        "n publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum",
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.labelSmall,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        const Spacer(),
          Padding(
            padding: const EdgeInsets.all(10),
            child: PrimaryButton(
              btnName: "LOGIN WITH GOOGLE",
              ontap: () {
                Get.offAll(const HomePage());
                //authController.loginWithEmail();
              },
            ),
          )

         ], 
         ),
        

    );
  }
}