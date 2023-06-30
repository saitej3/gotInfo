import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


class HomePageTest extends ConsumerStatefulWidget {
  const HomePageTest({super.key});

  @override
  ConsumerState createState() => _HomePageTestState();
}

class _HomePageTestState extends ConsumerState<HomePageTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade300,
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label:'Home' ),
          BottomNavigationBarItem(
              icon: Icon(Icons.message),
              label:'Messages' ),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_rounded),
              label:'Profile' )
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Hi, Sai Teja',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),),
                          SizedBox(height: 8,),
                          Text('29 June 2023',
                          style: TextStyle(color: Colors.deepPurple.shade100),)
                        ],
                      ),

                      Container(
                        decoration: BoxDecoration(
                          color: Colors.deepPurple.shade200,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        padding: EdgeInsets.all(12),
                          child: Icon(
                            Icons.notifications
                            ,color: Colors.white,))

                    ],
                  ),
                  SizedBox(height: 25,),
                  Container(
                    decoration: BoxDecoration(color: Colors.deepPurple.shade200,
                    borderRadius: BorderRadius.circular(12)),
                    padding: EdgeInsets.all(12),
                    child: Row(children: [
                      Icon(Icons.search,color: Colors.white,weight:10,),
                      SizedBox(width: 5,),
                      Text("Search",style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15
                      ),)
                    ],),),
                ],
              ),
            ),
            Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey.shade50,
                      borderRadius: BorderRadius.vertical(top: Radius.circular(25))
                  ),
                  )
            ),
          ],
        ),
      ),

    );
  }
}
