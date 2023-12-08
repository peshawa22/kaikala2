import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';

class Page1 extends StatefulWidget {

   const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  Color textColor =HexColor('#212B36');

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60),
          child: AppBar(
            title: SvgPicture.asset('assets/menu.svg'),
            actions: [
              Stack(
                children: [
                  Container(
                      margin: const EdgeInsets.only(right: 10),
                      child: SvgPicture.asset('assets/notification.svg')),
                  Container(
                    margin: const EdgeInsets.only(left: 15),
                    width: 8,
                    height: 8,
                    decoration: BoxDecoration(
                        color: HexColor('#FF4842'), shape: BoxShape.circle),
                  ),
                ],
              ),
              Stack(
                children: [
                  Container(
                      margin: const EdgeInsets.only(right: 20, left: 10),
                      child: SvgPicture.asset('assets/task.svg')),
                  Container(
                    margin: const EdgeInsets.only(left: 25),
                    width: 8,
                    height: 8,
                    decoration: BoxDecoration(
                        color: HexColor('#FF4842'), shape: BoxShape.circle),
                  ),
                ],
              )
            ],
          ),
        ),
        body: Column(
          children: [
            Container(
                margin: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Keikkala',
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                          color: HexColor('#212B36')),
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: HexColor('#3F4760'),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            )),
                        onPressed: () {},
                        child: Row(
                          children: [
                            Text(
                              'Add Keikkala Shift',
                              style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w700,
                                  color: HexColor('#FFFFFF')),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            SvgPicture.asset('assets/add.svg')
                          ],
                        ))
                  ],
                )),
            const SizedBox(
              height: 16,
            ),
            TabBar(
              labelColor: textColor,
              labelStyle: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                  ),
              unselectedLabelStyle:const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 14,
              ),
              unselectedLabelColor:HexColor('#637381'),
                indicatorColor: textColor,
                isScrollable: true, tabs: [
              Row(
                children: [
                  const Text(
                    'Morning',
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Container(
                    width: 29,
                    height: 22,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: const Color.fromRGBO(24, 144, 255, 0.16),
                    ),
                    child: Center(
                      child: Text(
                        '12',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                            color: HexColor('#0076C7')),
                      ),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  const Text(
                    'Evening',
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Container(
                    width: 29,
                    height: 22,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: const Color.fromRGBO(255, 193, 7, 0.16),
                    ),
                    child: Center(
                      child: Text(
                        '9',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                            color: HexColor('#B78103')),
                      ),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  const Text(
                    'Night',
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Container(
                    width: 29,
                    height: 22,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: const Color.fromRGBO(142, 51, 255, 0.16),
                    ),
                    child: Center(
                      child: Text(
                        '12',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                            color: HexColor('#5119B7')),
                      ),
                    ),
                  )
                ],
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
