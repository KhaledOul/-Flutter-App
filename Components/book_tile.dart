import 'package:flutter/material.dart';

class BookTile extends StatelessWidget {
  final String title;
  final String coverUrl;
  final String author;
  final int price;
  final String rating;
  final int totalRating;
 
  const BookTile({
    super.key, 
  required this.title, 
  required this.coverUrl, 
  required this.author,
   required this.price,
    required this.rating, 
    required this.totalRating, required Null Function() ontap
    });

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(bottom:15),
      child: InkWell(
        onTap: (){},
        child: Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                           color: Theme.of(context).colorScheme.primary.withOpacity(0.2), 
                           borderRadius: BorderRadius.circular(15),  
                            ),  
                            child: Row(
                            children: [
                            Container(
                                        decoration: BoxDecoration(boxShadow:[
                                          BoxShadow(
                                          color: Theme.of(context).colorScheme.primary.withOpacity(0.2),
                                          spreadRadius: 4,
                                          blurRadius: 7,
                                          offset: Offset(2, 2),
                                          ),  
                                    ]),
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(10),
                                          child: Image.asset(
                                            coverUrl,
                                            width: 100,
                                            ),
                                        ),
                                      ),
                            const SizedBox(width: 10,),
                           Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  title, 
                                  maxLines: 2,
                                  style: Theme.of(context).textTheme.bodyLarge,
                                ),
                                const SizedBox(height: 4,),
                                Text(
                                  "By: $author",
                                style: Theme.of(context).textTheme.labelMedium,
                                ),
                                 const SizedBox(height: 5,),
                                Text(
                                  "Price: $price",
                                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Theme.of(context).colorScheme.secondary),
        
                                
                                ),
                                const SizedBox(height: 10,),
                                Row(children: [
                                  Image.asset("lib/Asset/Icons/etoile.png",width: 15,),
                                  Text(
                                    rating,
                                    style: Theme.of(context).textTheme.bodyMedium,
                                    ),
                                  Text(
                                    "($totalRating ratings)",
                                  style: Theme.of(context).textTheme.labelMedium,
                                  ),
        
                                ],),
                              ],
                            ),
                           
                           ),     
                          ],
                          ),
                        ),
      ),
    );
  }
}