import 'package:flutter/material.dart';
import 'package:project1/pages/profile.dart';

class favorite extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFE9B5),
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Wishlist',
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
        children: const [
          SizedBox(
            height: 16,
          ),
          WishProduct1(),
          SizedBox(
            height: 128,
          ),
        ],
      ),
    );
  }
}

class WishProduct1 extends StatelessWidget {
  const WishProduct1({
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
                children: const [
                  Text(
                    'Seashell Mirror',
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    'Price: 150 SR',
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(
                    height: 16,
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
                    Icons.add,
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
