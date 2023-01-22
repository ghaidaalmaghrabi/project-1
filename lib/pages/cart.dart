import 'package:flutter/material.dart';
import 'package:project1/pages/pay.dart';
import 'package:project1/pages/profile.dart';

class cart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFE9B5),
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Cart',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Color(0xffffffff),
            ),
          ),
        ),
        backgroundColor: const Color(0xffF2ADC2),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.account_circle_rounded,
              color: Color(0xffffffff),
              size: 32,
            ),
            onPressed: () {
              final navigator = Navigator.of(context);
              navigator.push(
                MaterialPageRoute(
                  builder: (context) => profile(),
                ),
              );
            },
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 16,
          ),
          const CartProduct1(),
          const CartProduct2(),
          const SizedBox(
            height: 128,
          ),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(98, 55, 51, 51),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'products price: 286 SR',
                            style: TextStyle(fontSize: 20),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'TAX: 44 SR',
                            style: TextStyle(fontSize: 20),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Text(
                            'Total:  330 SR',
                            style: TextStyle(fontSize: 28),
                          ),
                        ],
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
                  builder: (context) => pay(),
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
                  'PAY',
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

class CartProduct1 extends StatelessWidget {
  const CartProduct1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 255, 255, 255),
          borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              const Image(
                image: NetworkImage('https://i.pinimg.com/564x/6d/cd/79/6dcd799db36dece1222ece79eb76581e.jpg'),
                height: 130,
                width: 130,
              ),
              const SizedBox(
                width: 16,
              ),
              Column(
                children: [
                  const Text(
                    'Seashell Mirror',
                    style: TextStyle(fontSize: 20),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const Text(
                    'Price: 150 SR',
                    style: TextStyle(fontSize: 20),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: const [
                      Icon(
                        Icons.add,
                        color: Color(0xffF2ADC2),
                        size: 30,
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Text(
                        '2',
                        style: TextStyle(fontSize: 20),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Icon(
                        Icons.minimize_outlined,
                        color: Color(0xffF2ADC2),
                        size: 30,
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                width: 16,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: const [
                  Icon(
                    Icons.delete_sharp,
                    color: Color(0xffF2ADC2),
                    size: 30,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CartProduct2 extends StatelessWidget {
  const CartProduct2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 255, 255, 255),
          borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              const Image(
                image: NetworkImage('https://i.pinimg.com/564x/5e/06/05/5e0605c86c4361537b416b784da74e83.jpg'),
                height: 130,
                width: 130,
              ),
              const SizedBox(
                width: 16,
              ),
              Column(
                children: [
                  const Text(
                    'Mermaid Pin',
                    style: TextStyle(fontSize: 20),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const Text(
                    'Price: 30 SR',
                    style: TextStyle(fontSize: 20),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: const [
                      Icon(
                        Icons.add,
                        color: Color(0xffF2ADC2),
                        size: 30,
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Text(
                        '1',
                        style: TextStyle(fontSize: 20),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Icon(
                        Icons.minimize_outlined,
                        color: Color(0xffF2ADC2),
                        size: 30,
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                width: 16,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: const [
                  Icon(
                    Icons.delete_sharp,
                    color: Color(0xffF2ADC2),
                    size: 30,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
