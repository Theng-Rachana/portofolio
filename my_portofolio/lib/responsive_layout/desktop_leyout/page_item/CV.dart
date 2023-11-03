import 'package:flutter/material.dart';

class CurVeWidget extends StatelessWidget {
  const CurVeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
            child: Container(
              width: 1200,
              height: 1665,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color.fromARGB(255, 75, 74, 74),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Stack(
                  children: [
                    Container(
                      width: 1180,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: const DecorationImage(
                          image: AssetImage('asserts/images/4240408_90689.jpg'),
                        ),
                      ),
                    ),
                    //profile
                    Positioned(
                      top: 4*3,
                      left: 4*3,
                      child: Container(
                        width: 100*2,
                        height: 130*2,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: const Color.fromARGB(255, 255, 255, 255),
                          image: const DecorationImage(image: AssetImage('asserts/images/my_profile-removebg-preview.png'),alignment: Alignment.bottomCenter)
                        ),
                      ),
                    ),
                    
                    Positioned(
                      top: 4*3,
                      right: 4*3,
                      child: Container(
                        width: 100*8.5,
                        height: 130*2,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color.fromARGB(71, 255, 255, 255),
                        ),
                        child: Column(
                          children: [
                            Text("data"),
                          ],
                        ),
                      ),
                    ),

                    //botton bar
                    Positioned(
                      bottom: 3,
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        margin: EdgeInsets.all(10),
                        width: 1160,
                        height: 100,
                        decoration: BoxDecoration(   
                          borderRadius: BorderRadius.circular(15),
                          color: const Color.fromARGB(71, 255, 255, 255),
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(right: 7),
                              child: Image(
                                image: AssetImage('asserts/icons/instagram_color.png')
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 7),
                              child: Image(
                                image: AssetImage('asserts/icons/telegram_color.png')
                              ),
                            ),
                            Image(
                              image: AssetImage('asserts/icons/facebook_color.png')
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
  }
}

// class hoverWidget extends StatefulWidget {
//   const hoverWidget({super.key});

//   @override
//   State<hoverWidget> createState() => _hoverWidgetState();
// }

// class _hoverWidgetState extends State<hoverWidget> {
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//             padding: const EdgeInsets.only(right: 7),
//             child: MouseRegion(
//               onEnter: (event) {
                
//               },
//               onExit: (event) {
                
//               },
//               child: InkWell(
//                 onTap: () {
//                   setState(() {
                    
//                   });
//                 },
//                 child: const Image(
//                   image: AssetImage('asserts/icons/telegram_color.png')
//                 ),
//               ),
//             ),
//           );
//       }
// }