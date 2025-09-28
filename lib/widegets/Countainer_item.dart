
import 'package:flutter/material.dart';
import 'package:zamalek/screens/home_screen.dart';

import '../coins_app/screens/coins_screen.dart';
import '../screens/Home_Screens.dart';

class CountainerItem extends StatelessWidget {
  const CountainerItem({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          'MyApps',
          style: TextStyle(fontSize: 25, color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(20),
                ),
                height: 200,
                width: double.infinity,
                clipBehavior: Clip.hardEdge, // عشان الصورة تتقص بالانحناء
                child: Row(
                  children: [

                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                      ),
                      child: Image.network(
                        'https://images.pexels.com/photos/3944463/pexels-photo-3944463.jpeg',
                        width: 180,
                        height: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),


                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Text(
                          'News Application',
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(right: 6),
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child: IconButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (_) {
                                return homeScreen();
                              }),
                            );
                          },
                          icon: Icon(Icons.arrow_forward_ios, color: Colors.blue),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.teal,
                  borderRadius: BorderRadius.circular(20),
                ),
                height: 200,
                width: double.infinity,
                clipBehavior: Clip.hardEdge,
                child: Row(
                  children: [

                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                      ),
                      child: Image.network(
                        'https://images.pexels.com/photos/1263324/pexels-photo-1263324.jpeg',
                        width: 180,
                        height: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),


                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Text(
                          'Coins Application',
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(right: 6),
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child: IconButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (_) {
                                return CoinsScreen();
                              }),
                            );
                          },
                          icon: Icon(Icons.arrow_forward_ios, color: Colors.teal),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.orangeAccent,
                  borderRadius: BorderRadius.circular(20),
                ),
                height: 200,
                width: double.infinity,
                clipBehavior: Clip.hardEdge,
                child: Row(
                  children: [

                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                      ),
                      child: Image.network(
                        'https://images.pexels.com/photos/30688912/pexels-photo-30688912.jpeg',
                        width: 180,
                        height: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),


                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Text(
                          'Product Application',
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(right: 6),
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child: IconButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (_) {
                                return HomeScreen();
                              }),
                            );
                          },
                          icon: Icon(Icons.arrow_forward_ios, color: Colors.orangeAccent),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),

      ),
    );
  }
}