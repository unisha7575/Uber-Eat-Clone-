import 'package:flutter/material.dart';
import 'package:uber_eats_clone/home_page_state.dart';
import 'package:uber_eats_clone/theme/colors.dart';

class FavoriteScreen extends StatefulWidget {
  final List exploreList;

  const FavoriteScreen({Key? key, required this.exploreList}) : super(key: key);

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView(
        children: List.generate(widget.exploreList.length, (index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Container(
                    width: MediaQuery.of(context).size.width,
                    height: 160,
                    child: Image(
                      image: NetworkImage(widget.exploreList[index]['img']),
                      fit: BoxFit.cover,
                    )), Text(
                    widget.exploreList[index]["name"],
                    style: const TextStyle(fontSize: 26, fontWeight: FontWeight.bold)),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Container(

                      child: const Text(
                        'Cafe-Coffee & Tea - Breakfast and Brunch - Bakery \$',
                        style: TextStyle(fontSize: 14, height: 1.3),
                      ),
                    ),

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
                    ),
                    SizedBox(
                      height: 60,
                    ),
                  ],

                ),
              ],
            );
        }),
      ),
          )),
    );
  }
}
