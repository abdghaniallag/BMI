import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  const Result({
    Key? key,
    required this.result,
    required this.isMale,
    required this.age,
  }) : super(key: key);

  final double result;
  final bool isMale;
  final int age;

  String get resultPhrase {
    String resultText = '';
    if (result >= 30)
      resultText = 'Obese';
    else if (result > 25 && result < 30)
      resultText = 'Overweight';
    else if (result >= 18.5 && result <= 24.9)
      resultText = 'Normal';
    else
      resultText = 'Thin';
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Result'), centerTitle:true),
      body: SafeArea(
        child: Container(
          color: Color.fromARGB(255, 240, 238, 237),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(16),
                  child: Text(
                    'Gender: ${isMale ? 'Male' : 'Female'}',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ),  Container(
                  padding: EdgeInsets.all(16),
                  child:
                Text(
                  'Result: ${result.toStringAsFixed(1)}',
                  style: Theme.of(context).textTheme.bodyText1,
                )),  Container(
                  padding: EdgeInsets.all(16),
                  child:
                Text(
                  'Healthiness: $resultPhrase',
                  style: Theme.of(context).textTheme.bodyText1,
                  textAlign: TextAlign.center,
                )),  Container(
                  padding: EdgeInsets.all(16),
                  child:
                Text(
                  'Age: $age',
                  style: Theme.of(context).textTheme.bodyText1,
                ),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
