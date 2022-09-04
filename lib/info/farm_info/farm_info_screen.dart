import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:mfarms/info/farm_info/farm_info_button.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:share_plus/share_plus.dart';

class farm_info_screen extends StatefulWidget {
  const farm_info_screen({super.key});

  @override
  State<farm_info_screen> createState() => _farm_info_screenState();
}

class _farm_info_screenState extends State<farm_info_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 30, 30, 0),
                child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back_ios_new,
                      color: Colors.blue,
                      size: 30,
                    )),
              ),
              Spacer()
            ],
          ),
          CarouselSlider(
              items: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          image: AssetImage("assets/info1.png"))),
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          image: AssetImage("assets/info2.png"))),
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          image: AssetImage("assets/info1.png"))),
                )
              ],
              options: CarouselOptions(
                height: 300,
                aspectRatio: 16 / 9,
                // viewportFraction: 0.8,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 3),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
                scrollDirection: Axis.horizontal,
              )),
          // SizedBox(height: 100,),
          farm_details_button('Farm Layout', () async {
            final url =
                "https://drive.google.com/file/d/1MZ6JrWmxYjlidGvDOQLZuloIMocpeEqq/view?usp=sharing";
            // ignore: deprecated_member_use
            if (await canLaunch(url)) {
              // ignore: deprecated_member_use
              await launch(url, forceWebView: true, enableJavaScript: true);
            } else {
              throw "coudn't launch url";
            }
          }, Icons.link, context),
          SizedBox(
            height: 30,
          ),
          farm_details_button('Cow location', () {}, Icons.link, context),
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 70.0, 10, 10),
                child: InkWell(
                    onTap: () async {
                      //https://goo.gl/maps/6V98NfDnHmuGQ6ZR7
                      final url =
                          "https://www.google.com/maps/search/?api=1&query=16.487640, 79.710311";
                      // ignore: deprecated_member_use
                      if (await canLaunch(url)) {
                        // ignore: deprecated_member_use
                        await launch(url,
                            forceWebView: true, enableJavaScript: true);
                      } else {
                        throw "coudn't launch url";
                      }
                    },
                    child: Image.asset("assets/location.png")),
              ),
              Row(
                children: [
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30.0, 80, 30, 30),
                    child: CircleAvatar(
                      radius: 27,
                      backgroundColor: Colors.blue,
                      child: IconButton(
                          color: Colors.black,
                          onPressed: () async {
                            // final loc =
                            //     "https://www.google.com/maps/search/?api=1&query=16.487640, 79.710311";
                            // await Share.share('$loc');
                          },
                          icon: Icon(Icons.share)),
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
