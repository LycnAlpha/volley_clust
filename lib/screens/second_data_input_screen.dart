import 'package:flutter/material.dart';
import 'package:volley_cust/providers/model_data_provider.dart';
import 'package:volley_cust/widgets/input_box.dart';

class SecondDataInputScreen extends StatelessWidget {
  final ModelDataProvider modelDataProvider;
  const SecondDataInputScreen({
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
                      label: 'Blood Pressure diastolic(mmHg)',
                      onchanged: (value) {
                        modelDataProvider.setBloodPressureD(value);
                      },
                    ),
                    InputBox(
                      label: 'Blood Pressure Systolic(mmHg)',
                      onchanged: (value) {
                        modelDataProvider.setBloodPressureS(value);
                      },
                    ),
                    InputBox(
                      label: 'Fat%',
                      onchanged: (value) {
                        modelDataProvider.setFat(value);
                      },
                    ),
                    InputBox(
                      label: 'Medicine Ball Throw(m)',
                      onchanged: (value) {
                        modelDataProvider.setMedicineBallThrow(value);
                      },
                    ),
                    InputBox(
                      label: 'Vertical Jump(mm)',
                      onchanged: (value) {
                        modelDataProvider.setVerticalJump(value);
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
                    modelDataProvider.validation2(
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
        ),
      ),
    );
  }
}
