import 'package:flutter/material.dart';

class pay2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFE9B5),
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Payment',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Color(0xffffffff),
            ),
          ),
        ),
        backgroundColor: const Color(0xffF2ADC2),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: const [
          Icon(
            Icons.done_outline_outlined,
            color: Color(0xffF2ADC2),
            size: 128,
          ),
          SizedBox(
            height: 32,
          ),
          Center(
            child: Text(
              'Payment completed successfully',
              style: TextStyle(
                fontSize: 24,
                color: Color(0xffF2ADC2),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
