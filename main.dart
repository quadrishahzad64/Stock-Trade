import 'package:flutter/material.dart';
import 'CustomeTile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //Colors.grey.shade500
    final List<String> texts = [
      'MEN',
      'CHILD',
      'WOMEN',
      'PURSES',
      'INFANT',
       'SHOES',
      'JEWELERY',
      'PERFUME',
      'FOODS',
    ];

    List<String> imgUrls = [
      'assets/men.jpg',
      'assets/child.jpg',
      'assets/woman.jpg',
      'assets/purse.jpg',
      'assets/infant.jpg',
      'assets/shoes.jpg',
      'assets/jewlery.jpg',
      'assets/perfume.jpg',
      'assets/foods.jpg',
    ];

    List<Color> containerColors = [
      Colors.red,
      Colors.green,
      Colors.blue,
      Colors.yellow,
      Colors.orange,
      Colors.purple,
      Colors.teal,
      Colors.pink,
      Colors.brown,
    ];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text(
            'My Shopping Cart',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              shadows: [
                Shadow(
                  color: Colors.grey.shade900,
                  offset: Offset(7, 7),
                  blurRadius: 5,
                  ),
              ],
            ),
          ),
          centerTitle: true,
        ),
        body: Expanded(
          child: 
          Column(
            children: [
              Container(
                color: Colors.grey.shade600,
                child: Column(

                  children: [
                   SizedBox(height: 40,),
                    Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          MyCont(text: texts[0],imgUrl: imgUrls[0],contColor: containerColors[0],),
                          MyContCir(text: texts[1],imgUrl: imgUrls[1],contColor: containerColors[1]),
                          MyContTri(text: texts[2],imgUrl: imgUrls[2],contColor: containerColors[2])
                                        ]
                                       ),
                    SizedBox(height: 40,),
                    Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                       children: [
                         MyCont(text: texts[3],imgUrl: imgUrls[3],contColor: containerColors[3],),
                         MyContCir(text: texts[4],imgUrl: imgUrls[4],contColor: containerColors[4]),
                         MyContTri(text: texts[5],imgUrl: imgUrls[5],contColor: containerColors[5])
                        ]),
                    SizedBox(height: 40,),
                       Row(
                           mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          MyCont(text: texts[6],imgUrl: imgUrls[6],contColor: containerColors[6],),
                          MyContCir(text: texts[7],imgUrl: imgUrls[7],contColor: containerColors[7]),
                          MyContTri(text: texts[8],imgUrl: imgUrls[8],contColor: containerColors[8])
                          ])
                  ],
                ),
              ),
              Expanded(
                child: Container(color: Colors.grey.shade600,
                child: Image.network('assets/shops.jpg',fit: BoxFit.cover,),
                ),
              ),
            ],
          ),
        
        ),

      ),
    );
  }
}