import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Assignment1-themecard', //app name
      theme: ThemeData(
          scaffoldBackgroundColor: const Color.fromARGB(255, 130, 205, 140)),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Personal Card'),
          titleTextStyle: GoogleFonts.acme(fontSize: 25, color: Colors.black),
          backgroundColor: const Color.fromARGB(255, 221, 226, 145),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 180), //space between picture and title
              const CircleAvatar(
                radius: 100.0,
                backgroundColor: (Colors.black),
                backgroundImage: AssetImage('images/pic.jfif'),
              ),
              const SizedBox(height: 20),
              Text(
                'Selomie Kindu Ejigu',
                style: GoogleFonts.kalam(fontSize: 25, color: Colors.black),
              ),
              const Text(
                'Software Engineering Student',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
              ),
              const Card(
                //shadow and other properties for card
                elevation: 10,
                color: Color.fromARGB(255, 189, 223, 238),
                margin: EdgeInsets.all(30),
                child: SizedBox(
                  width: 400,
                  height: 150,
                  child: ListTile(
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // list of rich text columns to add contact detail with icon
                      children: [
                        SizedBox(height: 20),
                        Text.rich(
                          TextSpan(
                            style: TextStyle(fontSize: 15, color: Colors.black),
                            children: [
                              WidgetSpan(
                                child: Icon(
                                  Icons.email,
                                  size: 18,
                                ),
                              ),
                              TextSpan(
                                text: '  E-mail: se223tz@student.lnu.se',
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 20),
                        Text.rich(
                          TextSpan(
                            style: TextStyle(fontSize: 15, color: Colors.black),
                            children: [
                              WidgetSpan(
                                child: Icon(
                                  Icons.phone,
                                  size: 18,
                                ),
                              ),
                              TextSpan(
                                text: '  Phone: +46704887471',
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 20),
                        Text.rich(
                          TextSpan(
                            style: TextStyle(fontSize: 15, color: Colors.black),
                            children: [
                              WidgetSpan(
                                child: Icon(
                                  Icons.place,
                                  size: 18,
                                ),
                              ),
                              TextSpan(
                                text: '  Location: Gothenburg, Sweden',
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
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
