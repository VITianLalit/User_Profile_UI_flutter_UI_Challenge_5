import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.yellow,
        body: Stack(
          children: [
            CustomScrollView(
              slivers: [
                SliverAppBar(
                  expandedHeight: 450,
                  backgroundColor: Colors.black,
                  flexibleSpace: FlexibleSpaceBar(
                    background: Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                        image: AssetImage('assets/images/img-1.jpg'),
                        fit: BoxFit.cover,
                      )),
                      child: Container(
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.bottomRight,
                                colors: [
                              Colors.yellow,
                              Colors.yellow.withOpacity(.3)
                            ])),
                        child: Padding(
                          padding: EdgeInsets.all(20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                'Emma Watson',
                                style: TextStyle(
                                    color: Colors.black45,
                                    fontSize: 45,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: [
                                  Text(
                                    '60 Videos',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                  SizedBox(
                                    width: 50,
                                  ),
                                  Text(
                                    '240K Subscrivers',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 16),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SliverList(
                    delegate: SliverChildListDelegate([
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Sarah Anderson, born on March 15, 1980, in Portland, Oregon, is a visionary entrepreneur and environmental advocate who has dedicated her career to revolutionizing sustainable practices in the business world. With a background in environmental science and a passion for creating positive change, Sarah has become a trailblazer in the field of sustainable innovation.',
                          style: TextStyle(color: Colors.black, height: 1.4),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Text(
                          'Born',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'March 15th 1980, Portland, Oregon',
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        ),
                        SizedBox(height: 20,),
                        Text(
                          'Nationality',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'British',
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        ),
                        SizedBox(height: 20,),
                        Container(
                          height: 200,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              makeVideo(image: 'assets/images/img-2.jpg'),
                              makeVideo(image: 'assets/images/img-3.jpg'),
                              makeVideo(image: 'assets/images/img-4.jpg'),
                            ],
                          ),
                        ),
                        SizedBox(height: 100,),
                      ],
                    ),
                  ),
                ]))
              ],
            ),
            Positioned.fill(
                bottom: 50,
                child: Container(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 30),
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.orange
                  ),
                  child: Align(child: Text('Follow', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),)),
                ),
              ),
            )),
          ],
        ),
      ),
    );
  }
  Widget makeVideo({image}){
    return AspectRatio(aspectRatio: 1.5/1, child: Container(
      margin: EdgeInsets.only(right: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        )
      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            colors: [
              Colors.yellow.withOpacity(.9),
              Colors.yellow.withOpacity(.3),
            ]
          )
        ),
        child: Align(
          child: Icon(Icons.play_arrow, color: Colors.white, size: 70,),
        ),
      ),
    ),);
  }
}
