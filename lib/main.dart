import 'package:first_try/utilities/free_course.dart';
import 'package:first_try/utilities/top_course.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ),
  );
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 238, 238, 238),
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Color.fromARGB(255, 63, 81, 181),
          statusBarIconBrightness: Brightness.light, // For Android (dark icons)
        ),
        backgroundColor: const Color.fromARGB(255, 63, 81, 181),
        title: Row(
          children: [
            const FaIcon(
              FontAwesomeIcons.crown,
              size: 15,
              color: Colors.amber,
            ),
            RichText(
              text: TextSpan(
                text: 'Prime',
                style: GoogleFonts.acme(fontSize: 18),
                children: const [
                  TextSpan(
                    text: 'LMS',
                    style: TextStyle(
                      color: Colors.amber,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        actions: const <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 15.0),
                  child: Icon(Icons.search),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15.0),
                  child: Icon(Icons.favorite_outline),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15.0),
                  child: Icon(Icons.notifications_outlined),
                ),
              ],
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: SizedBox(
                  height: 300,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: const [
                      TopCourse(
                        image: 'assets/images/2.jpg',
                        title:
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elitaskldjaslkdjaslkdjaslkdjasjldjk',
                        studentNumber: 16,
                        rating: 4,
                      ),
                      TopCourse(
                        image: 'assets/images/4.jpg',
                        title:
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elitaskldjaslkdjaslkdjaslkdjasjldjk',
                        studentNumber: 3,
                        rating: 2.7,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 22),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Categories',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                          ),
                        ),
                        Text(
                          'View all',
                          style: TextStyle(
                            fontSize: 14,
                            color: Color.fromARGB(255, 98, 98, 98),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Wrap(
                      spacing: 10,
                      runSpacing: 5,
                      children: [
                        ChoiceChip(
                          shape: const StadiumBorder(
                            side: BorderSide(
                              color: Color.fromARGB(255, 120, 120, 120),
                            ),
                          ),
                          labelPadding: const EdgeInsets.fromLTRB(12, 5, 12, 5),
                          label: const Text('Design'),
                          backgroundColor:
                              const Color.fromARGB(0, 255, 255, 255),
                          //selectedColor: Colors.green,
                          selected: false,
                          onSelected: (bool selected) {
                            setState(() {});
                          },
                        ),
                        ChoiceChip(
                          shape: const StadiumBorder(
                            side: BorderSide(
                              color: Color.fromARGB(255, 120, 120, 120),
                            ),
                          ),
                          labelPadding: const EdgeInsets.fromLTRB(12, 5, 12, 5),
                          label: const Text('Personal Development'),
                          backgroundColor:
                              const Color.fromARGB(0, 255, 255, 255),
                          //selectedColor: Colors.green,
                          selected: false,
                          onSelected: (bool selected) {
                            setState(() {});
                          },
                        ),
                        ChoiceChip(
                          shape: const StadiumBorder(
                            side: BorderSide(
                              color: Color.fromARGB(255, 120, 120, 120),
                            ),
                          ),
                          labelPadding: const EdgeInsets.fromLTRB(12, 5, 12, 5),
                          label: const Text('Development'),
                          backgroundColor:
                              const Color.fromARGB(0, 255, 255, 255),
                          //selectedColor: Colors.green,
                          selected: false,
                          onSelected: (bool selected) {
                            setState(() {});
                          },
                        ),
                        ChoiceChip(
                          shape: const StadiumBorder(
                            side: BorderSide(
                              color: Color.fromARGB(255, 120, 120, 120),
                            ),
                          ),
                          labelPadding: const EdgeInsets.fromLTRB(12, 5, 12, 5),
                          label: const Text('Music'),
                          backgroundColor:
                              const Color.fromARGB(0, 255, 255, 255),
                          //selectedColor: Colors.green,
                          selected: false,
                          onSelected: (bool selected) {
                            setState(() {});
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 35,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 22),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        RichText(
                          text: const TextSpan(
                            text: 'Explore ',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 22,
                                fontWeight: FontWeight.bold),
                            children: <TextSpan>[
                              TextSpan(
                                  text: 'Free Courses',
                                  style: TextStyle(
                                    color: Colors.blue,
                                  )),
                            ],
                          ),
                        ),
                        const Text(
                          'View all',
                          style: TextStyle(
                            color: Color.fromARGB(255, 98, 98, 98),
                            fontSize: 14,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 200,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: const [
                          FreeCourse(
                            title: 'A Crash Course In Wedding',
                            image: 'assets/images/3.jpg',
                          ),
                          FreeCourse(
                            title: 'Facebook Ads & Facebook Bussiness',
                            image: 'assets/images/1.png',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const Padding(
        padding: EdgeInsets.all(12.0),
        child: GNav(
          tabBackgroundColor: Color.fromARGB(64, 128, 196, 251),
          padding: EdgeInsets.all(12),
          tabs: [
            GButton(
              icon: Icons.home_outlined,
              text: 'Home',
              iconActiveColor: Color.fromARGB(255, 51, 111, 159),
            ),
            GButton(
              icon: Icons.search,
              text: 'Search',
              iconActiveColor: Color.fromARGB(255, 51, 111, 159),
            ),
            GButton(
              icon: Icons.book_outlined,
              text: 'Books',
              iconActiveColor: Color.fromARGB(255, 51, 111, 159),
            ),
            GButton(
              icon: Icons.person_outline,
              text: 'Profile',
              iconActiveColor: Color.fromARGB(255, 51, 111, 159),
            ),
          ],
        ),
      ),
    );
  }
}
