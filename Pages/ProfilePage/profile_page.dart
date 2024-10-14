
import 'package:e_book/Components/BackButton.dart';
import 'package:e_book/Components/book_tile.dart';
import 'package:e_book/Models/data.dart';
import 'package:flutter/material.dart';



class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(
          Icons.add,
          color: Theme.of(context).colorScheme.background,
          ),
        ),
  body: SingleChildScrollView(
    child: Column(
              children: [
                const SizedBox(height: 20,),
                  Container(
                  //height: 500,
                  padding: const EdgeInsets.symmetric(vertical:40, horizontal: 20),
                  color: Theme.of(context).colorScheme.primary,
                  child: Row( mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
          crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        MyBackButton(),
        Text(
          "DigitBook",
          style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                color: Theme.of(context).colorScheme.background,
              ),
        ),
        const SizedBox(width: 70,),

        
                              
       
      ],

    ),
                            const SizedBox(height:100,),
                            Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                border: Border.all(width: 2),
                                color: Theme.of(context).colorScheme.background,
                                
                              ),
                              child: Container(
                                width: 120,
                                height: 120,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(100),
                                  child: Image.asset(
                                    "lib/Asset/Images/Football.jpg",
                                  fit:BoxFit.cover,
                                  ),
                                  ),
                                ),
                            ),
                            const SizedBox(height:20,),
                            Text("Riad Bollore",style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                              color: Theme.of(context).colorScheme.background),
                          ),
    
                           Text("RiadBollore@gmail.com",style: Theme.of(context).textTheme.labelMedium?.copyWith(
                              color: Theme.of(context).colorScheme.onPrimaryContainer),
                          ),
    
                        
                          ],
                        ),
                      ),
                      
                      
                ],),
                  ),
                   Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                Row(
                children: [
                  Text(
                  "Your books",
                  style: Theme.of(context).textTheme.labelMedium,
                  ),
                ],
               ),
              const SizedBox(height: 20,),
            Column(children: bookData
            .map((e) =>BookTile(
               title: e.title!,
               coverUrl: e.coverUrl!,
               author: e.author!, 
              price: e.price!,
              rating: e.rating!,
              totalRating: e.numberofRating!,
              ontap: (){},
              )).toList()),
    
            ],
               
                
              ), 
            ),
          
    
           ], 
           ),
  ),


    );
  }
}