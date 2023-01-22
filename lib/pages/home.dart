import 'package:flutter/material.dart';
import 'package:project1/pages/cart.dart';
import 'package:project1/pages/product.dart';
import 'package:project1/pages/profile.dart';

class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFE9B5),
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Sirena',
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
              Icons.shopping_cart,
              color: Color(0xffffffff),
              size: 32,
            ),
            onPressed: () {
              final navigator = Navigator.of(context);
              navigator.push(
                MaterialPageRoute(
                  builder: (context) => cart(),
                ),
              );
            },
          ),
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
      body: SingleChildScrollView(
        child: Column(
          children: const [
            SizedBox(
              height: 32,
            ),
            SearchBar(),
            ProductCard1(),
            ProductCard2(),
            ProductCard3(),
            ProductCard4(),
            ProductCard5(),
            ProductCard6(),
            ProductCard1(),
            ProductCard2(),
            ProductCard3(),
            ProductCard4(),
            ProductCard5(),
            ProductCard6(),
            SizedBox(
              height: 32,
            ),
          ],
        ),
      ),
    );
  }
}

class ProductCard1 extends StatelessWidget {
  const ProductCard1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              final navigator = Navigator.of(context);
              navigator.push(
                MaterialPageRoute(
                  builder: (context) => product(),
                ),
              );
            },
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
                      ],
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Column(
                      children: [
                        Container(
                          color: const Color(0xffF2ADC2),
                          child: const Icon(
                            Icons.add,
                            color: Color.fromARGB(255, 255, 255, 255),
                            size: 30,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ProductCard3 extends StatelessWidget {
  const ProductCard3({
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
                image: NetworkImage('https://i.pinimg.com/564x/10/68/05/10680542077a3261a7ab10916176ef21.jpg'),
                height: 130,
                width: 130,
              ),
              const SizedBox(
                width: 16,
              ),
              Column(
                children: const [
                  Text(
                    'Mermaid Mug',
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    'Price: 200 SR',
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
              const SizedBox(
                width: 16,
              ),
              Container(
                color: const Color(0xffF2ADC2),
                child: const Icon(
                  Icons.add,
                  color: Color.fromARGB(255, 255, 255, 255),
                  size: 30,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProductCard2 extends StatelessWidget {
  const ProductCard2({
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
                image: NetworkImage('https://i.pinimg.com/564x/11/e9/d4/11e9d49a4a4d089758e7cef503185e49.jpg'),
                height: 130,
                width: 130,
              ),
              const SizedBox(
                width: 16,
              ),
              Column(
                children: const [
                  Text(
                    'Mermaid',
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    'Price: 100 SR',
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
              const SizedBox(
                width: 16,
              ),
              Container(
                color: const Color(0xffF2ADC2),
                child: const Icon(
                  Icons.add,
                  color: Color.fromARGB(255, 255, 255, 255),
                  size: 30,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProductCard4 extends StatelessWidget {
  const ProductCard4({
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
                image: NetworkImage('https://i.pinimg.com/564x/a1/19/55/a1195592868a44c91dce2e207ee0f362.jpg'),
                height: 130,
                width: 130,
              ),
              const SizedBox(
                width: 16,
              ),
              Column(
                children: const [
                  Text(
                    'Mermaid Notebook',
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    'Price: 70 SR',
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
              const SizedBox(
                width: 16,
              ),
              Container(
                color: const Color(0xffF2ADC2),
                child: const Icon(
                  Icons.add,
                  color: Color.fromARGB(255, 255, 255, 255),
                  size: 30,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProductCard5 extends StatelessWidget {
  const ProductCard5({
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
                children: const [
                  Text(
                    'Mermaid Pin',
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    'Price: 30 SR',
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
              const SizedBox(
                width: 16,
              ),
              Container(
                color: const Color(0xffF2ADC2),
                child: const Icon(
                  Icons.add,
                  color: Color.fromARGB(255, 255, 255, 255),
                  size: 30,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProductCard6 extends StatelessWidget {
  const ProductCard6({
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
                image: NetworkImage('https://i.pinimg.com/564x/69/e4/7c/69e47c85947f60969dbb0b25cadfedfb.jpg'),
                height: 130,
                width: 130,
              ),
              const SizedBox(
                width: 16,
              ),
              Column(
                children: const [
                  Text(
                    'Perfume',
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    'Price: 25 SR',
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
              const SizedBox(
                width: 16,
              ),
              Container(
                color: const Color(0xffF2ADC2),
                child: const Icon(
                  Icons.add,
                  color: Color.fromARGB(255, 255, 255, 255),
                  size: 30,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: Color(0xffffffff),
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: const [
                    Icon(
                      Icons.search,
                      color: Color(0xffF2ADC2),
                      size: 30,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      'search',
                      style: TextStyle(color: Color(0xffF2ADC2), fontSize: 24),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
