import 'package:flutter/material.dart';
import 'package:flutter_application_1/Page1.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    customCard({
      required String image,
      required String title,
      required String subtitle,
      required bool isFollowing,
      required BuildContext context,
    }) {
      return GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Page1(
                image: image,
                followers: subtitle,
              ),
            ),
          );
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 7.5),
          child: Container(
            decoration: const BoxDecoration(
              color: Color(0xFF1A1B22),
              borderRadius: BorderRadius.all(
                Radius.circular(15),
              ),
            ),
            height: 73,
            width: 400,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ListTile(
                  leading: CircleAvatar(
                    radius: 33,
                    backgroundImage: AssetImage(
                      image,
                    ),
                  ),
                  title: Text(
                    title,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                  subtitle: Text(
                    "$subtitle Followers",
                    style: const TextStyle(
                      fontSize: 13,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  trailing: isFollowing
                      ? customOutlinedButton()
                      : customElevatedButton(),
                ),
              ],
            ),
          ),
        ),
      );
    }

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF1A1B22),
        body: Center(
          child: Container(
            height: 700,
            width: 600,
            color: Colors.black,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 22, bottom: 5, left: 92, right: 88),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Search Results",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "22,276 founds",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.redAccent,
                          ),
                        ),
                      ],
                    ),
                  ),
                  customCard(
                    image: 'images/Mask Group.png',
                    title: "BBC News",
                    subtitle: '6.5M',
                    isFollowing: true,
                    context: context,
                  ),
                  customCard(
                    image: 'images/Auto Layout Horizontal.png',
                    title: "CNN",
                    subtitle: '616.3K',
                    isFollowing: true,
                    context: context,
                  ),
                  customCard(
                    image: 'images/3.png',
                    title: "CNET",
                    subtitle: '148K',
                    context: context,
                    isFollowing: false,
                  ),
                  customCard(
                    image: 'images/dailymail.jpg',
                    title: "Daily Mail",
                    subtitle: '577.4K',
                    isFollowing: false,
                    context: context,
                  ),
                  customCard(
                    image: 'images/time.png',
                    title: "TIME",
                    subtitle: '574.4K',
                    isFollowing: true,
                    context: context,
                  ),
                  customCard(
                    image: 'images/buzzfeed.png',
                    title: "Buzzfeed",
                    subtitle: '381.4K',
                    isFollowing: false,
                    context: context,
                  ),
                  customCard(
                    image: 'images/usa.png',
                    title: "USA Today",
                    subtitle: '365.5K',
                    isFollowing: true,
                    context: context,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  customElevatedButton() {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateColor.resolveWith(
          (states) => Colors.redAccent,
        ),
        elevation: MaterialStateProperty.resolveWith((states) => 0),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
        ),
      ),
      onPressed: () {},
      child: const Text(
        " + Follow ",
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  customOutlinedButton() {
    return OutlinedButton(
      style: ButtonStyle(
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
        ),
        side: MaterialStateBorderSide.resolveWith(
          (states) => BorderSide(
            color: Colors.redAccent,
            width: 2,
          ),
        ),
      ),
      onPressed: () {},
      child: Text(
        "Following",
        style: TextStyle(
          color: Colors.redAccent,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
