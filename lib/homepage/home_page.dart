import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  DateTime time = DateTime.now();

  List<Color> colors = [Colors.black, Colors.grey, Colors.brown];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          title: Text(
            widget.title,
            style: const TextStyle(fontSize: 15),
          ),
          foregroundColor: Colors.black,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
                height: 250,
                width: double.infinity,
                child: Image.asset(
                  'assets/image/hehe.jpeg',
                  fit: BoxFit.fitWidth,
                )),
            Container(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Text(
                        'Kucing',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 1),
                      ),
                      const Spacer(),
                      Icon(
                        Icons.favorite_rounded,
                        color: Colors.red[400],
                        size: 25,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.yellow[700],
                        size: 20,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow[700],
                        size: 20,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow[700],
                        size: 20,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow[700],
                        size: 20,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow[700],
                        size: 20,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        '(4.9)',
                        style: TextStyle(color: Colors.grey, fontSize: 15),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  const Text(
                    'Description',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 4),
                  const Text(
                    'Kucing ini mengesalkan dari penampilannya',
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                        fontWeight: FontWeight.normal),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  const Text(
                    'Dan setiap kali di tatap senyumnya akan selalu mengesalkan',
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                        fontWeight: FontWeight.normal),
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  const Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Ukuran',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            'Badannya sangat kecil',
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 16,
                                fontWeight: FontWeight.normal),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Text(
                            'Bisa digenggam',
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 16,
                                fontWeight: FontWeight.normal),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Treatment',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            'Berbulu dan suka bermain',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            'Sangat menyukasi belly rub',
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 16,
                                fontWeight: FontWeight.normal),
                          )
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Warna',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Row(
                            children: [
                              ...List.generate(
                                colors.length,
                                (index) => Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 20,
                                      backgroundColor: colors[index],
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 51,
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Quantity',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.remove_circle_outline,
                                size: 30,
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                '1',
                                style: TextStyle(fontSize: 16),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Icon(
                                Icons.add_circle,
                                color: Colors.indigo,
                                size: 30,
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Center(
                      child: SizedBox(
                    width: 250,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.grey[700],
                            foregroundColor: Colors.white,
                            elevation: 5),
                        onPressed: () {},
                        child: const Text('ADD TO CART')),
                  ))
                ],
              ),
            ),
          ],
        ));
  }
}
