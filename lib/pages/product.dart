import 'package:flutter/material.dart';
import 'package:project1/pages/profile.dart';

class product extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFE9B5),
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Product details',
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
        children: [
          const Image(
            image: NetworkImage('https://i.pinimg.com/564x/6d/cd/79/6dcd799db36dece1222ece79eb76581e.jpg'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              padding: const EdgeInsets.all(16.0),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              child: Row(
                children: [
                  Column(
                    children: const [
                      Text(
                        'Seashell Mirror',
                        style: TextStyle(
                          fontSize: 24,
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Text(
                        'Price: 150 SR',
                        style: TextStyle(
                          fontSize: 24,
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Text(
                        'Material: Plastic',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 170,
                  ),
                  const FavoriteIcon(),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 64,
          ),
          Container(
            padding: const EdgeInsets.all(16.0),
            decoration: const BoxDecoration(
              color: Color(0xffF2ADC2),
              borderRadius: BorderRadius.all(
                Radius.circular(30),
              ),
            ),
            child: const Text(
              'Add To Cart',
              style: TextStyle(
                color: Colors.white,
                fontSize: 32,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class FavoriteIcon extends StatefulWidget {
  const FavoriteIcon({
    Key? key,
  }) : super(key: key);

  @override
  State<FavoriteIcon> createState() => _FavoriteIconState();
}

class _FavoriteIconState extends State<FavoriteIcon> {
  var favColor = Colors.black;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (favColor == Colors.black) {
          setState(() {
            favColor = Colors.red;
          });
        } else {
          setState(() {
            favColor = Colors.black;
          });
        }
      },
      child: Icon(
        Icons.favorite,
        size: 32,
        color: favColor,
      ),
    );
  }
}
