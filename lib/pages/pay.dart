import 'package:flutter/material.dart';
import 'package:project1/pages/pay2.dart';

class pay extends StatelessWidget {
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
        children: [
          const SizedBox(
            height: 32,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              decoration: const BoxDecoration(
                color: Color(0xffffffff),
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      children: const [
                        Icon(
                          Icons.check_box_outlined,
                          size: 32,
                          color: Color(0xffF2ADC2),
                        ),
                        Icon(
                          Icons.attach_money_outlined,
                          size: 32,
                          color: Colors.green,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          'Cash on Delivery',
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            color: Color(0xffF2ADC2),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 32),
                    Row(
                      children: const [
                        Icon(
                          Icons.check_box_outline_blank_outlined,
                          size: 32,
                          color: Color(0xffF2ADC2),
                        ),
                        Icon(
                          Icons.credit_card,
                          size: 32,
                          color: Colors.red,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          'Credit card',
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            color: Color(0xffF2ADC2),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 32),
                    Row(
                      children: const [
                        Icon(
                          Icons.check_box_outline_blank_outlined,
                          size: 32,
                          color: Color(0xffF2ADC2),
                        ),
                        Icon(
                          Icons.paypal_sharp,
                          size: 32,
                          color: Colors.blue,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          'PayPal',
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            color: Color(0xffF2ADC2),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 32),
                    Row(
                      children: const [
                        Icon(
                          Icons.check_box_outline_blank_outlined,
                          size: 32,
                          color: Color(0xffF2ADC2),
                        ),
                        Icon(
                          Icons.apple,
                          size: 32,
                          color: Colors.black,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          'Apple Pay',
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            color: Color(0xffF2ADC2),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 128,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: const [
                Icon(
                  Icons.check_box_outlined,
                  size: 40,
                  color: Color(0xffF2ADC2),
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  'I Accept the terms and conditions',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff000000),
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Text(
                        'Total: 330 SR',
                        style: TextStyle(fontSize: 32),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          InkWell(
            onTap: () {
              final navigator = Navigator.of(context);
              navigator.push(
                MaterialPageRoute(
                  builder: (context) => pay2(),
                ),
              );
            },
            child: Container(
              decoration: const BoxDecoration(
                color: Color(0xffffffff),
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              child: const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'DONE',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Color(0xffF2ADC2),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
