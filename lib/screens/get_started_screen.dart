import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:volley_cust/providers/model_data_provider.dart';
import 'package:volley_cust/screens/first_data_input_screen.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Welcome to \nVolleyClust',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.w800,
                      fontSize: 40.0),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 30.0,
              vertical: 15.0,
            ),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MultiProvider(
                            providers: [
                              ChangeNotifierProvider(
                                create: (context) => ModelDataProvider(),
                              ),
                            ],
                            child: const FirstDataInputScreen(),
                          )),
                );
              },
              child: Container(
                width: MediaQuery.of(context).size.width * 0.7,
                padding: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 20.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.blue),
                child: const Text(
                  'Get Started',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 25.0,
                  ),
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
