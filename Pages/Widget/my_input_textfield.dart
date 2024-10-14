import 'package:flutter/material.dart';

class MyInputTextField extends StatelessWidget {
  const MyInputTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return   Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Theme.of(context).colorScheme.background,
                        ),
                        child: Row(
                          children: [
                            const SizedBox(width: 15,),
                            Image.asset("lib/Asset/Icons/loupe.png",height: 20,),
                            const SizedBox(width: 10,),


                            Expanded(
                              child: TextFormField(
                                decoration: const InputDecoration(
                                  hintText: "Search Here..",
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                  ),
                                ),
                              ),
                            ),
                           // Image.asset()
                          ],
                        ),
                        );
  }
}