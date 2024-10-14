import 'package:e_book/Components/book_card.dart';
import 'package:e_book/Components/book_tile.dart';
import 'package:e_book/Models/data.dart';
import 'package:e_book/Pages/BookDetails/book_details.dart';
import 'package:e_book/Pages/Widget/category_widget.dart';
import 'package:e_book/Pages/Widget/home_app_bar.dart';
import 'package:e_book/Pages/Widget/my_input_textfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          const HomeAppBar(),
                          const SizedBox(
                            height: 30,
                          ),
                          Row(
                            children: [
                              Text(
                                "Welcome to DigitBook✌️",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge
                                    ?.copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .background,
                                    ),
                              ),
                              Text(
                                "My Friend",
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineLarge
                                    ?.copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .background,
                                    ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Flexible(
                                child: Text(
                                    "Time to read about your favorite subject",
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelMedium
                                        ?.copyWith(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .background)),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const MyInputTextField(),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Text(
                                "Topics",
                                style: Theme.of(context)
                                    .textTheme
                                    .labelMedium
                                    ?.copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .background,
                                    ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: categoryData
                                  .map((e) => CategoryWidget(
                                      iconPath: e["icon"]!,
                                      btnName: e["lebel"]!))
                                  .toList(),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Trending",
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                    ],
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: bookData
                          .map(
                            (e) => BookCard(
                              title: e.title!,
                              coverUrl: e.coverUrl!,
                              onTap: () {
                                Get.to(BookDetails(book: e,));
                              },
                            ),
                          )
                          .toList(),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        "Your Interests",
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Column(
                      children: bookData
                          .map((e) => BookTile(
                              title: e.title!,
                              coverUrl: e.coverUrl!,
                              author: e.author!,
                              price: e.price!,
                              rating: e.rating!,
                              totalRating: e.numberofRating!,
                              ontap: (){},
                              ),)
                          .toList())
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
