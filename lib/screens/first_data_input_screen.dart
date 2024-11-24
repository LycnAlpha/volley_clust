import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:volley_cust/providers/model_data_provider.dart';
import 'package:volley_cust/widgets/input_box.dart';

class FirstDataInputScreen extends StatelessWidget {
  const FirstDataInputScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Enter your player details',
        ),
      ),
      body: SafeArea(child: Consumer<ModelDataProvider>(
          builder: (context, modelDataProvider, child) {
        return Padding(
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
                      label: 'Age',
                      onchanged: (value) {
                        modelDataProvider.setAge(value);
                      },
                    ),
                    InputBox(
                      label: 'Weight(kg)',
                      onchanged: (value) {
                        modelDataProvider.setWeight(value);
                      },
                    ),
                    InputBox(
                      label: 'Height(m)',
                      onchanged: (value) {
                        modelDataProvider.setHeight(value);
                      },
                    ),
                    InputBox(
                      label: 'BMI (kg/m2)',
                      onchanged: (value) {
                        modelDataProvider.setBmi(value);
                      },
                    ),
                    InputBox(
                      label: 'Random Heart Rate(min)',
                      onchanged: (value) {
                        modelDataProvider.setRandomHeartRate(value);
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
                    modelDataProvider.validation1(
                      modelDataProvider,
                      context,
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
        );
      })),
    );
  }
}
