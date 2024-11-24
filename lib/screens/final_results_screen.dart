import 'package:flutter/material.dart';
import 'package:volley_cust/screens/get_started_screen.dart';

class FinalResultsScreen extends StatelessWidget {
  final String result;
  const FinalResultsScreen({
    super.key,
    required this.result,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Your player is in Cluster $result',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.w800,
                      fontSize: 40.0),
                ),
                Text(
                  result == '1'
                      ? 'Low-Performer'
                      : result == '2'
                          ? 'High-Performer'
                          : 'Average-Performer',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
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
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const GetStartedScreen()),
                  (route) => false,
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
                  'Finish',
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
