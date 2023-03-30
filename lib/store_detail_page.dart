//import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:line_icons/line_icons.dart';
import 'package:uber_eats_clone/home_page_state.dart';
import 'package:uber_eats_clone/theme/colors.dart';
import 'package:uber_eats_clone/theme/style.dart';

class storeDetailPage extends StatefulWidget {
  final String image;
  final String name;

  const storeDetailPage({Key? key, required this.image, required this.name}) : super(key: key);

  @override
  State<storeDetailPage> createState() => _storeDetailPageState();
}

class _storeDetailPageState extends State<storeDetailPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomSheet: getFooter(),
        body: getBody(),
      ),
    );
  }

  Widget getFooter() {
    var size = MediaQuery.of(context).size;
    return Container(
      height: 80,
      width: size.width,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(top: BorderSide(color: Colors.black.withOpacity(0.1))),
      ),
      child: Column(
        children: [
          Text(
            "\$15.00 away from a \$0.00 delivery fee",
            style: TextStyle(
                fontSize: 14, fontWeight: FontWeight.w500, color: primary),
          ),
        ],
      ),
    );
  }

  Widget getBody() {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 100),
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: size.width,
                  height: 150,
                  child: Image(
                    image: NetworkImage(widget.image),
                    fit: BoxFit.cover,
                  ),
                ),
                Row(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Container(
                          width: 50,
                          height: 50,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child: InkWell(
                            onTap: (){
                              Navigator.pop(context);
                            },
                            child: const Icon(

                              Icons.arrow_back,
                              size: 18,
                            ),
                          ),
                        )),
                    const Spacer(),
                    IconButton(
                        onPressed: () {},
                        icon: Container(
                          width: 50,
                          height: 50,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(
                            Icons.favorite,
                            size: 18,
                          ),
                        ))
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                  widget.name,
                    style: const TextStyle(fontSize: 26, fontWeight: FontWeight.bold)),
                  const SizedBox(
                    height: 5,
                  ),

                  Row(
                    children: [
                      Container(
                        width: size.width - 30,
                        child: const Text(
                          'Cafe-Coffee & Tea - Breakfast and Brunch - Bakery \$',
                          style: TextStyle(fontSize: 14, height: 1.3),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: textFieldColor,
                            borderRadius: BorderRadius.circular(3)),
                        child: Padding(
                          padding: const EdgeInsets.all(3),
                          child: Icon(
                            Icons.hourglass_bottom,
                            color: primary,
                            size: 16,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: textFieldColor,
                          borderRadius: BorderRadius.circular(3),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(5),
                          child: Text(
                            "40-50 min",
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: textFieldColor,
                          borderRadius: BorderRadius.circular(3),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Row(
                            children: [
                              const Text(
                                '4.7',
                                style: TextStyle(fontSize: 14),
                              ),
                              const SizedBox(
                                width: 2,
                              ),
                              const Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 16,
                              ),
                              const Text(
                                "16",
                                style: TextStyle(fontSize: 14),
                              ),
                              const SizedBox(
                                width: 2,
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Divider(
                    color: Colors.black.withOpacity(0.3),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text('Store info', style: customContent),
                  const SizedBox(
                    height: 1,
                  ),
                  Row(
                    children: [
                      Container(
                        width: (size.width) * 0.8,
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              'assets/images/pin_icon.svg',
                              width: 15,
                              color: Colors.black.withOpacity(0.5),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            const Text("38 Park Row Frnt 4 ,New York ,1003")
                          ],
                        ),
                      ),
                      Expanded(
                          child: Text('More Info',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: primary)))
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Icon(
                        LineIcons.comment,
                        size: 15,
                        color: primary,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Text(
                        "People say...",
                        style: TextStyle(
                            fontSize: 14, color: Colors.black.withOpacity(0.5)),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                        children: List.generate(peopleFeedback.length, (index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: Container(
                          height: 40,
                          decoration: BoxDecoration(
                              color: primary.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(30)),
                          child: Center(
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(right: 15, left: 15),
                              child: Text(
                                peopleFeedback[index],
                                style: TextStyle(
                                    fontSize: 14,
                                    color: primary,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                        ),
                      );
                    })),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: size.width - 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                          color: Colors.black.withOpacity(0.1),
                        )),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Delivery Fee',
                            style:
                                TextStyle(color: Colors.black.withOpacity(0.5)),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: (size.width - 70) * 0.8,
                                  child: const Text(
                                    'There aren\'t enough courier\'s nearby , so the delivery fee is higher right now.',
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ),
                                Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.black.withOpacity(0.15),
                                  ),
                                  child: Icon(Icons.arrow_circle_down_outlined,
                                      color: Colors.black.withOpacity(0.4),
                                      size: 18),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Divider(
                    color: Colors.black.withOpacity(0.3),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('Meanu'),
                          const Icon(LineIcons.search),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          'Packed For You',
                          style: TextStyle(
                              fontSize: 21, fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Column(
                          children: List.generate(packForYou.length, (index) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 30),
                          child: Row(
                            children: [
                              Container(
                                width: (size.width - 30) * 0.6,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      packForYou[index]['name'],
                                      style: const TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 18),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      packForYou[0]['description'],
                                      style: const TextStyle(height: 1.3),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      packForYou[index]['price'],
                                      style: const TextStyle(height: 1.3),
                                    )
                                  ],
                                ),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              Expanded(
                                  child: Container(
                                height: 110,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image(
                                    image: NetworkImage(
                                      packForYou[index]['img'],
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ))
                            ],
                          ),
                        );
                      }))
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
