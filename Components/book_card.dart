import 'package:flutter/material.dart';

class BookCard extends StatelessWidget {
  final String coverUrl;
  final String title;
  final VoidCallback onTap;
  const BookCard({super.key, required this.coverUrl, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
   return Padding(
     padding: const EdgeInsets.only(right: 20),
     child: InkWell(
      onTap: onTap,
       child: SizedBox(
                            width: 120,
                             child: Column(
                              children: [
                               
                                Container(
                                  decoration: BoxDecoration(
                                    boxShadow:[
                                    BoxShadow(
                                    color: Theme.of(context).colorScheme.primary.withOpacity(0.2),
                                    spreadRadius: 4,
                                    blurRadius: 7,
                                    offset: const Offset(2,2),
                                    ),  
                              ],
                              ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.asset(
                                      coverUrl,
                                      width: 100,
                                      ),
                                  ),
                                ),
                              Text( 
                                title,
                                textAlign: TextAlign.center,
                                maxLines: 1,
                                style: Theme.of(context).textTheme.bodyMedium,
                                ),
                              ],
                                                   ),
                           ),
     ),
   );
  }
}