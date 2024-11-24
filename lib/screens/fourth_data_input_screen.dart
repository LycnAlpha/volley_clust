import 'package:flutter/material.dart';
import 'package:volley_cust/providers/model_data_provider.dart';
import 'package:volley_cust/widgets/input_box.dart';

class FourthDataInputScreen extends StatelessWidget {
  final ModelDataProvider modelDataProvider;
  const FourthDataInputScreen({
    super.key,
    required this.modelDataProvider,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Enter your player details',
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    InputBox(
                      label: 'Vo2 max/kg/min',
                      onchanged: (value) {
                        modelDataProvider.setVO2Max(value);
                      },
                    ),
                    InputBox(
                      label: 'Skills and Techniques (%)',
                      onchanged: (value) {
                        modelDataProvider.setSKillsNTechniques(value);
                      },
                    ),
                    InputBox(
                      label: 'Game Condition (%)',
                      onchanged: (value) {
                        modelDataProvider.setGameCondition(value);
                      },
                    ),
                    InputBox(
                      label: 'Gender_Encoded',
                      onchanged: (value) {
                        modelDataProvider.setGnederEncoded(value);
                      },
                    ),
                    InputBox(
                      label: 'Agility test',
                      onchanged: (value) {
                        modelDataProvider.setAgilitytest(value);
                      },
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
                    modelDataProvider.validation4(context);
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.7,
                    padding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 20.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.blue),
                    child: const Text(
                      'Next',
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
          ),
        ),
      ),
    );
  }
}
