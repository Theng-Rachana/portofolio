// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, avoid_unnecessary_containers, must_be_immutable, unused_local_variable, dead_code

import 'package:flutter/material.dart';
import 'package:my_portofolio/responsive_layout/desktop_leyout/page_item/CV.dart';
import 'package:my_portofolio/responsive_layout/desktop_leyout/page_item/Navigationbar.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
// import 'package:animations/animations.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter_animate/flutter_animate.dart';
class Maindektoppage extends StatefulWidget {
  Maindektoppage({super.key});

  @override
  State<Maindektoppage> createState() => _MaindektoppageState();
}

class _MaindektoppageState extends State<Maindektoppage> {
    bool ishoving = false;
    bool click = false;
  @override
  Widget build(BuildContext context) {
    var currentwitdh = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 245, 245, 245),
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                color: Color.fromARGB(255, 245, 245, 245),
                child: Center(
                  child: NavigationBarwidget()
                )
              ),
              Container(
                height: 800,
                child: Stack(
                  children: [
                    Positioned(
                      top: 100,
                      left: 340,
                      child: LottieBuilder.network('https://lottie.host/c18b243e-e7d2-4dc3-ab51-c3e62baa64cd/97ZALBOi9O.json'),
                      width: 500,
                      height: 500,
                    ),
                    //buttton
                    Positioned(
                      top: 300,
                      left: 170,
                      child: SizedBox(
                        width: 220,
                        height: 180,
                        child: Column(
                          children: [
                            ButtonWidget(tittles: "Contact",),
                            ButtonWidget(tittles: "Hire me",),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: 100,
                      left: MediaQuery.of(context).size.width *0.1,
                      child: Container(
                        width: 368,
                        child:AnimatedTextKit(
                          animatedTexts: [
                            TypewriterAnimatedText(
                              "Hey there, I`m Rachana.",textStyle: TextStyle(fontSize: 60,fontWeight: FontWeight.bold,),
                              speed: Duration(milliseconds: 100),
                            )
                          ],
                          totalRepeatCount: 1,
                          repeatForever: false,
                          ) ,),
                    ),
                    Positioned(
                      top: 250,
                      left: MediaQuery.of(context).size.width *0.20,
                      child: Container(
                        child: Text("Fullstack developer",style: TextStyle(fontSize: 20,color: Color.fromARGB(255, 25, 84, 96)),).animate(delay: Duration(seconds: 2)).fadeIn(duration: Duration(milliseconds: 1000)).moveX(begin: -20),
                      ),
                    ),
                    //iphone design
                    //border
                    Positioned(
                      top: 40,
                      right: MediaQuery.of(context).size.width * 0.2,
                      child: Container(
                        width: 286,
                        height: 624,
                        decoration: BoxDecoration(
                          border: Border.all(width: 8,color: const Color.fromARGB(255, 63, 63, 63)),
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.white,
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 241, 241, 241),  //background mobile
                            borderRadius: BorderRadius.circular(40),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Column(
                              children: [
                                //dynamic island
                                Stack(
                                  children: [
                                    Container(
                                      width: 100,
                                      height: 20,
                                      decoration: BoxDecoration(
                                        color: const Color.fromARGB(255, 63, 63, 63),
                                        borderRadius: BorderRadius.circular(50)
                                      ),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        children: [
                                          Container(
                                            width: 70,
                                            height: 10,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(50),
                                              color: Color.fromARGB(255, 30, 30, 30)
                                            ),
                                          ),
                                          Container(
                                            width: 10,
                                            height: 10,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Color.fromARGB(255, 30, 30, 30)
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                //body
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Container(
                                    height: 558,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(40),bottomRight: Radius.circular(40)),
                                      // color: Colors.amber,
                                    ),
                                    child: ListView(
                                      children: [
                                        //navigate bar
                                        Padding(
                                          padding: const EdgeInsets.only(top: 10,left: 8,right: 8,bottom: 10),
                                          child: Container(
                                            height: 30,
                                            // color: Colors.amber,
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Icon(Icons.arrow_back),
                                                Text("Profile",style: TextStyle(fontWeight: FontWeight.bold),),
                                                Icon(Icons.more_vert_sharp)
                                              ],
                                            ),
                                          ),
                                        ),
                                        //profile
                                        Padding(
                                          padding: const EdgeInsets.only(top: 10,left: 8.5,right: 8.5,bottom: 10),
                                          child: Container(
                                            height: 100,
                                            decoration: BoxDecoration(
                                            color: const Color.fromARGB(255, 255, 255, 255),
                                              borderRadius: BorderRadius.circular(15),
                                            ),
                                            child: Row(
                                              children: [
                                                Container(
                                                  width: 120,
                                                  decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.only(
                                                      topRight: Radius.circular(50),
                                                      bottomRight: Radius.circular(50),
                                                      topLeft: Radius.circular(15),
                                                      bottomLeft: Radius.circular(15),
                                                      ),
                                                    color: Color.fromARGB(150, 72, 167, 162),
                                                  ),
                                                  child: Image(
                                                    image: AssetImage('asserts/images/my_profile-removebg-preview.png'),
                                                    ).animate(delay: Duration(milliseconds: 1500)).fadeIn(duration: Duration(milliseconds: 1500)).moveX(begin: 10),
                                                ).animate().fadeIn(duration: Duration(milliseconds: 1500)).moveX(begin: 10),
                                                Column(
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    //name
                                                    Text("Theng Rachana",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                                                    Padding(
                                                      padding: const EdgeInsets.only(top: 8),
                                                      child: Text("full stack Developer",style: TextStyle(fontSize: 10,color: Colors.grey),),
                                                    )
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        //my hobbies
                                        Padding(
                                          padding: const EdgeInsets.only(left: 8.5,bottom: 10),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text("My Status",style: TextStyle(fontSize: 10,color: Colors.grey),),
                                              Container(
                                                width:300,
                                                height: 300,
                                                // color: Colors.red,
                                                child: GridView.count(crossAxisCount: 2,
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.only(right: 16 , top: 10),
                                                    child: StatusWidget(imageurl: 'asserts/icons/computer.png', tittle: "Gaming", color: const Color.fromARGB(255, 39, 39, 39)),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.only(right: 16,top: 10),
                                                    child: StatusWidget(imageurl: 'asserts/icons/listen.png', tittle: "Music", color: Color.fromARGB(255, 198, 238, 200)),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.only(right: 16 , top: 10),
                                                    child: StatusWidget(imageurl: 'asserts/icons/working.png', tittle: "Coding", color: Color.fromARGB(255, 255, 223, 176)),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.only(right: 16,top: 10),
                                                    child: StatusWidget(imageurl: 'asserts/icons/sleep.png', tittle: "Sleep", color: Colors.blueGrey),
                                                  ),
                                                ],
                                                )
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(left: 8, right: 10),
                                                child: Container(
                                                  width: 240,
                                                  height: 50,
                                                  child: Row(
                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                    children: [
                                                      InkWell(
                                                        onTap: () {
                                                          setState(() {
                                                          });
                                                        },
                                                        child: SizedBox(
                                                          width: 20,
                                                          height: 20,
                                                          child: Image(
                                                            image: AssetImage("asserts/icons/facebook.png"),),
                                                        ),
                                                      ),
                                                      InkWell(
                                                        onTap: () {
                                                          setState(() {
                                                          });
                                                        },
                                                        child: SizedBox(
                                                          width: 20,
                                                          height: 20,
                                                          child: Image(
                                                            image: AssetImage("asserts/icons/twitter.png"),),
                                                        ),
                                                      ),
                                                      InkWell(
                                                        onTap: () {
                                                          setState(() {
                                                          });
                                                        },
                                                        child: SizedBox(
                                                          width: 20,
                                                          height: 20,
                                                          child: Image(
                                                            image: AssetImage("asserts/icons/youtube.png"),),
                                                        ),
                                                      ),
                                                      InkWell(
                                                        onTap: () {
                                                          setState(() {
                                                          });
                                                        },
                                                        child: SizedBox(
                                                          width: 20,
                                                          height: 20,
                                                          child: Image(
                                                            image: AssetImage("asserts/icons/github (1).png"),),
                                                        ),
                                                      ),
                                                      InkWell(
                                                        onTap: () {
                                                          setState(() {
                                                          });
                                                        },
                                                        child: SizedBox(
                                                          width: 20,
                                                          height: 20,
                                                          child: Image(
                                                            image: AssetImage("asserts/icons/instagram.png"),),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),


          Center(
            child:Text('Information'.toUpperCase(),
              style: TextStyle(
                fontSize: 60,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          CurVeWidget(),
        ],
      ),
    );
  }
}

class StatusWidget extends StatelessWidget {
  StatusWidget({super.key,required this.imageurl,required this.tittle,required this.color});
  String imageurl;
  String tittle;
  Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
              width: 80,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: color,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image(
                      image: AssetImage(imageurl),width: 30,
                    ),
                    Text(tittle, style: TextStyle(fontWeight: FontWeight.bold , color: Colors.white),),
                  ],
                ),
              ),
            );
  }
}

class ButtonWidget extends StatefulWidget {
  
  String tittles;
  ButtonWidget({super.key, required this.tittles});

  @override
  State<ButtonWidget> createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget> {
  bool ishoving = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
            onEnter: (event) {
              setState(() {
                ishoving = true;
                // print(ishoving);
              });
            },
            onExit: (event) {
              setState(() {
                ishoving = false;
              });
            },
            child: SizedBox(
              width: 220,
              height: 90,
              child: Center(
                child: AnimatedContainer(
                  width:ishoving? 210 : 200,
                  height:ishoving? 80 : 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromARGB(255,62,62,66),
                  ),
                  duration: Duration(milliseconds: 200),
                  child: Center(
                    child:  Text(
                      widget.tittles ,
                      style: TextStyle(
                        fontSize:ishoving? 25:20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                        ),
                      ),
                  ),
                ),
              ),
            ),
          );
  }
}

// Widget items(){
//   return Container(

//   );
// }