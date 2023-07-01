import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'MyHomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    //Hide the Status Bar
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: [SystemUiOverlay.bottom]);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyStartPage(),
    );
  }
}

class MyStartPage extends StatefulWidget {
  const MyStartPage({super.key});

  @override
  State<MyStartPage> createState() => _MyStartPageState();
}

class _MyStartPageState extends State<MyStartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2C2C2C),
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: 150,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 300,
                    child: Image.asset(
                      'assets/images/vegetablesFruit.png',
                    ),
                  ),
                  const SizedBox(height: 50),
                  const Align(
                    alignment: Alignment.center,
                    child: Text(
                      'KEEPING YOU HEALTHY',
                      style: TextStyle(
                        fontSize: 12,
                        fontFamily: "Inter",
                        fontWeight: FontWeight.normal,
                        letterSpacing: 7.0,
                        color: Color(0xFFF1C950),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: Text(
                      "LET'S start eating\n Healthy",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 40,
                          fontFamily: "Inter",
                          letterSpacing: 2.0,
                          color: Colors.white),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "In honor of World Health Day\n wed Like to give you this\n amazing offer",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white30,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Inter",
                      fontSize: 15.0,
                      letterSpacing: 2.0,
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 90),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: TextButton(
                    onPressed: null,
                    child: Text(
                      'Already have an Account? Sign-in',
                      style: TextStyle(
                        color: Color(0xFFF1C950),
                        fontSize: 12.0,
                        fontFamily: "Inter",
                        fontWeight: FontWeight.w700,
                      ),
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                bottom: 30,
              ),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: SizedBox(
                  width: 320,
                  height: 60,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFF1C950),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(15),
                            ),
                          )),
                      onPressed: () {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            builder: (context) => const MyHomePage(),
                          ),
                        );
                      },
                      child: const Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Get Started ',
                            style: TextStyle(
                              color: Color(0xFF2C2C2C),
                              fontSize: 17.0,
                              fontFamily: "Inter",
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(width: 8),
                          Icon(
                            Icons.arrow_right_alt,
                            size: 24,
                            color: Color(0xFF2C2C2C),
                          ),
                        ],
                      )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
