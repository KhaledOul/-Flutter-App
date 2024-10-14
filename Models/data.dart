import 'package:e_book/Models/book_model.dart';

var categoryData =[

{
  "icon": "lib/Asset/Icons/coeurs.png",
  "lebel": "Romance",
},

{
  "icon": "lib/Asset/Icons/avion.png",
  "lebel": "Travel",
},
{
  "icon": "lib/Asset/Icons/haltere.png",
  "lebel": "Sport",
},
{
  "icon": "lib/Asset/Icons/terre.png",
  "lebel": "Documentary",
},


];
var bookData = [

BookModel(
  id: "1",
  title: "Football Story",
  description: "In this book you will find the stories of the big football players and the big football events",
  aboutAuthor: "Hi, my name is Riad Bollore and I have written this book",
  author: "Riad Bollore",
  audioLen: "20",
  coverUrl: "lib/Asset/Images/Football.jpg",
  rating: "4.7",
  category: "Sport",
  numberofRating: 20,
  price: 10,
  pages: 20,
  language: "ENG",
  
  bookurl: "https://cdn.syncfusion.com/content/PDFViewer/flutter-succinctly.pdf"
),
BookModel(
  id: "2",
  title: "Football Journey",
  description: "In this book you will find the stories of the big football players and the big football events",
  aboutAuthor: "Hi, my name is Riad Bollore and I have written this book",
  author: "Riad Bollore",
  audioLen: "20",
  coverUrl: "lib/Asset/Images/Football.jpg",
  rating: "4.2",
  category: "Sport",
  numberofRating: 10,
  price: 8,
  pages: 20,
  language: "ENG",
  bookurl: "https://cdn.syncfusion.com/content/PDFViewer/flutter-succinctly.pdf"
  
),

];






