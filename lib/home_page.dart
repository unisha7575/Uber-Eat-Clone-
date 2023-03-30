import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:uber_eats_clone/home_page_state.dart';
import 'package:uber_eats_clone/store_detail_page.dart';
import 'package:uber_eats_clone/theme/style.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'theme/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int activeMeanu = 0;

  List nameList = nameList1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: getBody(),
      ),
    );
  }

  Widget getBody() {
    var size = MediaQuery.of(context).size;
    return ListView(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 15,
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(nameList.length, (index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          activeMeanu = index;
                        });
                      },
                      child: activeMeanu == index
                          ? ElasticIn(
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.black,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 25, right: 25, top: 8, bottom: 8),
                                  child: Row(
                                    children: [
                                      Text(
                                        nameList[index],
                                        style: const TextStyle(color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            )
                          : ElasticIn(
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.transparent,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 25, right: 25, top: 8, bottom: 8),
                                  child: Row(
                                    children: [
                                      Text(
                                        nameList[index],
                                        style: const TextStyle(color: Colors.black),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                    ),
                  );
                })),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 15),
                    height: 45,
                    width: size.width - 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: textFieldColor,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12),
                          child: Row(
                            children: [
                              SvgPicture.asset(
                                "assets/images/pin_icon.svg",
                                width: 20,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                'New York',
                                style: customContent,
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5),
                          child: Container(
                            height: 35,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(30)),
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(right: 15, left: 15),
                              child: Row(
                                children: [
                                  SvgPicture.asset(
                                    'assets/images/time_icon.svg',
                                    width: 20,
                                  ),
                                  const SizedBox(
                                    width: 8,
                                  ),
                                  Text(
                                    'Now',
                                    style: customContent,
                                  ),
                                  const SizedBox(
                                    width: 2,
                                  ),
                                  const Icon(Icons.keyboard_arrow_down)
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 2,
                  ),
                  Expanded(
                      child: Container(
                    child: SvgPicture.asset('assets/images/filter_icon.svg'),
                  ))
                ],
              ),
            ),
            // SizedBox(
            //   height: 5,
            // ),
            CarouselSlider(
              options: CarouselOptions(
                height: 200,
                autoPlay: true,
              ),
              items: [
                'assets/images/slide_1.jpg',
                'assets/images/slide_2.jpg',
                'assets/images/slide_3.jpg',
              ].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(i),
                    );
                  },
                );
              }).toList(),
            ),

            Container(
                width: size.width,
                decoration: BoxDecoration(
                  color: textFieldColor,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 10, top: 10),
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 15, bottom: 15),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Container(
                          margin: const EdgeInsets.only(left: 30),
                          child: Row(
                            children: List.generate(catagories.length, (index) {
                              return Padding(
                                padding: const EdgeInsets.only(right: 30),
                                child: Column(
                                  children: [
                                    SvgPicture.asset(
                                      catagories[index]['img'],
                                      width: 40,
                                    ),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    Text(catagories[index]['name'])
                                  ],
                                ),
                              );
                            }),
                          ),
                        ),
                      ),
                    ),
                  ),
                )),
            const SizedBox(
              height: 15,
            ),
            Container(
              width: size.width,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        Container(
                            width: size.width,
                            height: 160,
                            child: Image(
                              image: NetworkImage(firstMenu[0]['img']),
                              fit: BoxFit.cover,
                            )),
                        Positioned(
                          bottom: 15,
                          right: 15,
                          child: SvgPicture.asset(
                            firstMenu[0]['isLiked']
                                ? 'assets/images/loved_icon.svg'
                                : 'assets/images/love_icon.svg',
                            width: 20,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      firstMenu[0]['name'],
                      style:
                          const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: const [
                        Text(
                          'Sponsored',
                          style: TextStyle(fontSize: 14),
                        ),
                        Icon(
                          Icons.info,
                          size: 14,
                          color: Colors.grey,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      firstMenu[0]['description'],
                      style: const TextStyle(fontSize: 14),
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
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Text(
                              firstMenu[0]['time'],
                              style: const TextStyle(fontSize: 14),
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
                            child: Text(
                              firstMenu[0]['deliveryFee'],
                              style: const TextStyle(fontSize: 14),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              width: size.width,
              height: 10,
              decoration: BoxDecoration(
                color: textFieldColor,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              margin: const EdgeInsets.only(left: 15, right: 15, bottom: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "More to Explore ",
                    style: customTitle,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children:List.generate(exploreMenu.length, (index) {
                        return        GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>storeDetailPage(image: exploreMenu[index]['img'],name:exploreMenu[index]['name'] ,)));

                          },
                          child: Padding(
                            padding: const EdgeInsets.only(
                              right: 15,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Stack(
                                  children: [
                                    Container(
                                        width: size.width,
                                        height: 160,
                                        child: Image(
                                          image:
                                          NetworkImage(exploreMenu[index]['img']),
                                          fit: BoxFit.cover,
                                        )),
                                    Positioned(
                                      bottom: 15,
                                      right: 15,
                                      child: SvgPicture.asset(
                                        firstMenu[0]['isLiked']
                                            ? 'assets/images/loved_icon.svg'
                                            : 'assets/images/love_icon.svg',
                                        width: 20,
                                      ),
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  exploreMenu[index]['name'],
                                  style: const TextStyle(
                                      fontSize: 16, fontWeight: FontWeight.w400),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Row(
                                  children: const [
                                    Text(
                                      'Sponsored',
                                      style: TextStyle(fontSize: 14),
                                    ),
                                    Icon(
                                      Icons.info,
                                      size: 14,
                                      color: Colors.grey,
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  exploreMenu[index]['description'],
                                  style: const TextStyle(fontSize: 14),
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
                                      child: Padding(
                                        padding: const EdgeInsets.all(5),
                                        child: Text(
                                          exploreMenu[index]['time'],
                                          style: const TextStyle(fontSize: 14),
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
                                            Text(
                                              exploreMenu[index]['rate'],
                                              style: const TextStyle(fontSize: 14),
                                            ),
                                            const SizedBox(
                                              width: 2,
                                            ),
                                            const Icon(
                                              Icons.star,
                                              color: Colors.yellow,
                                              size: 16,
                                            ),
                                            Text(
                                              exploreMenu[index]['rateNumber'],
                                              style: const TextStyle(fontSize: 14),
                                            ),
                                            const SizedBox(
                                              width: 2,
                                            ),
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        );
                      }


                        //
                    ),
                  )
                  )],
              ),
            ),

            Container(
              margin: const EdgeInsets.only(left: 15, right: 15, bottom: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "More To Explore ",
                    style: customTitle,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children:List.generate(popluarNearYou.length, (index) {
                          return        GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>storeDetailPage(image: popluarNearYou[index]['img'],name:popluarNearYou[index]['name'])));
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(
                                right: 15,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Stack(
                                    children: [
                                      Container(
                                          width: size.width,
                                          height: 160,
                                          child: Image(
                                            image:
                                            NetworkImage(popluarNearYou[index]['img']),
                                            fit: BoxFit.cover,
                                          )),
                                      Positioned(
                                        bottom: 15,
                                        right: 15,
                                        child: SvgPicture.asset(
                                          firstMenu[0]['isLiked']
                                              ? 'assets/images/loved_icon.svg'
                                              : 'assets/images/love_icon.svg',
                                          width: 20,
                                        ),
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    popluarNearYou[index]['name'],
                                    style: const TextStyle(
                                        fontSize: 16, fontWeight: FontWeight.w400),
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  Row(
                                    children: const [
                                      Text(
                                        'Sponsored',
                                        style: TextStyle(fontSize: 14),
                                      ),
                                      Icon(
                                        Icons.info,
                                        size: 14,
                                        color: Colors.grey,
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  Text(
                                    popluarNearYou[index]['description'],
                                    style: const TextStyle(fontSize: 14),
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
                                        child: Padding(
                                          padding: const EdgeInsets.all(5),
                                          child: Text(
                                            popluarNearYou[index]['time'],
                                            style: const TextStyle(fontSize: 14),
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
                                              Text(
                                                popluarNearYou[index]['rate'],
                                                style: const TextStyle(fontSize: 14),
                                              ),
                                              const SizedBox(
                                                width: 2,
                                              ),
                                              const Icon(
                                                Icons.star,
                                                color: Colors.yellow,
                                                size: 16,
                                              ),
                                              Text(
                                                popluarNearYou[index] ['rateNumber'],
                                                style: const TextStyle(fontSize: 14),
                                              ),
                                              const SizedBox(
                                                width: 2,
                                              ),
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          );
                        }




                        ),
                      )
                  )],
              ),
            )
          ],
        )
      ],
    );
  }
}
