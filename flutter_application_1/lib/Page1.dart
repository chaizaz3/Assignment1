import 'package:flutter/material.dart';

void main() {}

class Page1 extends StatelessWidget {
  Page1({
    Key? key,
    required this.image,
    required this.followers,
  });
  String image;
  String followers;
  //This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: SafeArea(
          child: Container(
              height: double.infinity,
              width: double.infinity,
              margin: EdgeInsets.all(5),
              child: Center(
                  child: SingleChildScrollView(
                      child: Column(
                children: [
                  CircleAvatar(
                    foregroundImage: AssetImage('images/Mask Group.png'),
                    radius: 60,
                  ),
                  Padding(padding: const EdgeInsets.all(2.5)),
                  Text(
                    'Flutter is Awsome',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  Padding(padding: const EdgeInsets.all(3)),
                  Text(
                    'Student',
                    style: TextStyle(color: Colors.grey, fontSize: 15),
                  ),
                  Container(
                    width: 370,
                    child: Row(children: [
                      Column(children: [
                        Padding(padding: const EdgeInsets.all(5)),
                        Text(
                          '872.4K',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        Padding(padding: const EdgeInsets.all(5.0)),
                        Text(
                          'Hits',
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        )
                      ]),
                      Container(
                        margin: EdgeInsets.only(left: 30),
                        height: 70,
                        width: 2,
                        color: Colors.grey,
                      ),
                      Container(
                          width: 170,
                          child: Column(
                            children: [
                              Padding(padding: const EdgeInsets.all(5)),
                              Text(
                                '6.5M',
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              Padding(padding: const EdgeInsets.all(5)),
                              Text(
                                'Followers',
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          )),
                      Container(
                        margin: EdgeInsets.only(right: 20),
                        height: 70,
                        width: 2,
                        color: Colors.grey,
                      ),
                      Container(
                        width: 70,
                        child: Column(
                          children: [
                            Padding(padding: const EdgeInsets.all(5)),
                            Text(
                              '127',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            Padding(padding: const EdgeInsets.all(5)),
                            Text(
                              'Following',
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ]),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 9, left: 70, right: 70),
                        width: 400,
                        height: 1,
                        color: Colors.grey,
                      )
                    ],
                  ),
                  Container(
                      width: 350,
                      margin: EdgeInsets.only(left: 20),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ElevatedButton.icon(
                              onPressed: () {},
                              icon: Icon(
                                Icons.person_add,
                                color: Colors.white,
                              ),
                              label: Text(
                                'Follow   ',
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.white),
                              ),
                              style: ButtonStyle(
                                backgroundColor:
                                    getColor(Colors.redAccent, Colors.white),
                                side: getBorder(
                                    Colors.redAccent, Colors.redAccent),
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20))),
                              ),
                            ),
                            Padding(
                                padding: const EdgeInsets.only(
                                    top: 20, right: 80, bottom: 30)),
                            ElevatedButton.icon(
                              onPressed: () {},
                              icon:
                                  Icon(Icons.language, color: Colors.redAccent),
                              label: Text(
                                'Website  ',
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.redAccent),
                              ),
                              style: ButtonStyle(
                                  foregroundColor:
                                      getColor(Colors.white, Colors.redAccent),
                                  backgroundColor:
                                      getColor(Colors.white, Colors.redAccent),
                                  side: getBorder(
                                      Colors.redAccent, Colors.redAccent),
                                  shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20)))),
                            )
                          ],
                        ),
                      )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          margin: EdgeInsets.only(right: 20),
                          width: 80,
                          height: 18,
                          child: Text(
                            'Top News',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          )),
                      Padding(padding: EdgeInsets.only(right: 85)),
                      Container(
                        margin: EdgeInsets.only(left: 15),
                        width: 80,
                        height: 18,
                        child: Text(
                          'Recent',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                      )
                    ],
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Container(
                      margin: EdgeInsets.only(top: 5),
                      width: 200,
                      height: 3,
                      color: Colors.redAccent,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5),
                      width: 200,
                      height: 2,
                      color: Colors.grey,
                    )
                  ]),
                  Padding(padding: EdgeInsets.all(5)),
                  Container(
                      height: 350,
                      width: 400,
                      child: Column(
                        children: [
                          listNews(
                              'images/image2.png',
                              'Wow! USA Develops New\nWay of Faster and More...',
                              'Health'),
                          Container(
                            height: 5,
                          ),
                          listNews(
                              'images/image3.png',
                              'Manchester United Adds a\nFamous Portugal Player ... ',
                              'Sport')
                        ],
                      ))
                ],
              ))))),
    ));
  }
}

listNews(String image, String text, String tag) {
  return Container(
    height: 110,
    width: 400,
    decoration: BoxDecoration(
      borderRadius: const BorderRadius.all(Radius.circular(25)),
      border: Border.all(width: 1, color: Colors.grey),
    ),
    child: Row(
      children: [
        Container(
          height: 120,
          width: 150,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(25), bottomLeft: Radius.circular(25)),
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(image),
            ),
          ),
        ),
        Container(
          width: 20,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: const TextStyle(
                fontSize: 16.5,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              children: [
                const Text(
                  'Aizaz',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  width: 10,
                ),
                OutlinedButton(
                  style: ButtonStyle(
                    side: MaterialStateBorderSide.resolveWith(
                        (states) => BorderSide(
                              width: 1,
                              color: Colors.redAccent,
                            )),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                  ),
                  onPressed: () {},
                  child: customText(
                    text: tag,
                    fontSize: 14,
                    color: Colors.redAccent,
                  ),
                ),
              ],
            ),
          ],
        )
      ],
    ),
  );
}

MaterialStateProperty<Color> getColor(Color color, Color colorPressed) {
  final getColor = (Set<MaterialState> states) {
    if (states.contains(MaterialState.pressed)) {
      return colorPressed;
    } else {
      return color;
    }
  };
  return MaterialStateProperty.resolveWith(getColor);
}

MaterialStateProperty<BorderSide> getBorder(Color Color, Color colorpressed) {
  final getBorder = (Set<MaterialState> states) {
    if (states.contains(MaterialState.pressed)) {
      return BorderSide(color: colorpressed, width: 2);
    } else {
      return BorderSide(color: Color, width: 2);
    }
  };
  return MaterialStateProperty.resolveWith(getBorder);
}

customText({
  required String text,
  required double fontSize,
  Color color = Colors.black,
}) {
  return Text(
    text,
    style: TextStyle(
      fontSize: fontSize,
      color: color,
    ),
  );
}
