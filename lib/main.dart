import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            //controller: controller,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 16),
              child: LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
                  return Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          width: constraints.maxWidth * 0.4,
                          child: Image.asset('assets/img/Linkedin-Logo.png'),
                        ),
                      ),
                      Container(
                        height: constraints.maxWidth - 50,
                        child: Image.asset(
                          'assets/img/observer.png',
                        ),
                      ),
                      Container(
                        child: Text(
                          'Hello!',
                          style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        child: Text(
                          'Welcome to Sales TOP A Platform To Manage Real Estate Needs.',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w700,
                            color: Colors.grey,
                            height: 1.5,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(
                        height: constraints.maxWidth * 0.12,
                      ),
                      Container(
                        width: constraints.maxWidth,
                        child: Row(
                          children: [
                            Container(
                              width: constraints.maxWidth * 0.45,
                              height: constraints.maxWidth * 0.15,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  shape: StadiumBorder(),
                                  primary: Color.fromRGBO(10, 102, 194, 1),
                                ),
                                onPressed: () {},
                                child: Text(
                                  'Login',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                            ),
                            Expanded(child: Container()),
                            Container(
                              width: constraints.maxWidth * 0.45,
                              height: constraints.maxWidth * 0.15,
                              child: OutlinedButton(
                                style: ElevatedButton.styleFrom(
                                  side: BorderSide(width: 2),
                                  shape: StadiumBorder(),
                                  primary: Colors.white,
                                ),
                                onPressed: () {},
                                child: Text(
                                  'Sign Up',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: constraints.maxWidth * 0.17,
                      ),
                      Container(
                        child: Text(
                          'Or via social media',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w700,
                            color: Colors.grey,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: constraints.maxWidth * 0.57,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              child: Image.asset('assets/img/facebookv2.png'),
                            ),
                            Container(
                              height: 50,
                              width: 50,
                              child: Image.asset('assets/img/google-mas.png'),
                            ),
                            Container(
                              height: 50,
                              width: 50,
                              child: Image.asset('assets/img/linkedin.png'),
                            ),
                          ],
                        ),
                      )
                    ],
                  );
                },
              ),
            ),
          ),
        ));
  }
}
