// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, must_be_immutable, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class NavigationBarwidget extends StatefulWidget {
  const NavigationBarwidget({super.key});

  @override
  State<NavigationBarwidget> createState() => _NavigationBarwidgetState();
}

class _NavigationBarwidgetState extends State<NavigationBarwidget> {
  bool isdark = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            child: Text("portofolio",style: TextStyle(fontFamily: "Pacifico",fontSize: 20),),
          ),
          Container(
            child: Row(
              children: [
                NavMenu(menu: "Services"),
                NavMenu(menu: "Works"),
                NavMenu(menu: "Notes"),
                NavMenu(menu: "Experienses"),
              ],
            ),
          ),
          Container(
            child: Row(
              children: [
                Text("+885 884 557 626"),
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 2,
                        spreadRadius: 0.2,
                        offset: Offset(2,2),
                        color: const Color.fromARGB(255, 152, 152, 152)
                      )
                    ]
                  ),
                  child: Icon(Icons.phone,color: Color.fromARGB(255, 43, 203, 147),))
              ],
            ),
          ),
          // Container(
          //   width: 70,
          //   height: 25,
          //   decoration: BoxDecoration(
          //     borderRadius: BorderRadius.circular(50),
          //     color: isdark? Colors.white: Colors.black,
          //   ),
          //   child: Padding(
          //     padding: const EdgeInsets.all(4.0),
          //     child: Row(
          //       children: [
          //         InkWell(
          //           onTap: () {
          //             setState(() {
          //               isdark = !isdark;
          //             });
          //           },
          //           child: Container(
          //             width: 20,
          //             height: 20,
          //             decoration: BoxDecoration(
          //               shape: BoxShape.circle,
          //               color: isdark? Colors.white:Colors.black,
          //             ),
          //           ),
          //         )
          //       ],
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}

class NavMenu extends StatelessWidget {
  NavMenu({super.key,required this.menu});
  String menu;
  @override
  Widget build(BuildContext context) {
    return Container(
              width: MediaQuery.of(context).size.width * 0.1,
              child: Text(menu.toUpperCase()),
            );
  }
}