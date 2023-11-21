import 'package:flutter/material.dart';

class HomeLayout extends StatelessWidget {
  const HomeLayout({super.key});

  @override
  Widget build(BuildContext context) {
    const starts = Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(Icons.star, color: Colors.amber),
        Icon(Icons.star, color: Colors.amber),
        Icon(Icons.star, color: Colors.amber),
        Icon(Icons.star, color: Colors.black),
        Icon(Icons.star, color: Colors.black),
      ],
    );

    final ratings = Container(
      padding: const EdgeInsets.all(20),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          starts,
          Text(
            '170 reviews',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w800,
              fontFamily: 'Roboto',
              letterSpacing: 0.5,
              fontSize: 20,
            ),
          )
        ],
      ),
    );

    const descTextStyle = TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w800,
      fontFamily: 'Roboto',
      letterSpacing: 0.5,
      fontSize: 18,
      height: 2,
    );

    const title = Text(
      'To create a row',
      style: TextStyle(fontWeight: FontWeight.bold),
    );

    const subTitle = Text(
      'The following example shows how it is possible to nest rows or columns inside of rows or columns.',
    );
    final iconList = DefaultTextStyle.merge(
      style: descTextStyle,
      child: Container(
        padding: const EdgeInsets.all(20),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Row(
                  children: [
                    Column(
                      children: [
                        Icon(
                          Icons.add_home_outlined,
                          color: Colors.green,
                        ),
                        Row(
                          children: [Text('PREP'), Text(':')],
                        ),
                        Row(
                          children: [Text('25'), Text('min')],
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.man_3_outlined,
                          color: Colors.green,
                        ),
                        Row(
                          children: [Text('COOK'), Text(':')],
                        ),
                        Row(
                          children: [Text('1'), Text('hr')],
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.access_alarm_outlined,
                          color: Colors.green,
                        ),
                        Row(
                          children: [Text('FEEDS'), Text(':')],
                        ),
                        Row(
                          children: [Text('4-'), Text('6')],
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
            Column(children: [Text('Position2')])
          ],
        ),
      ),
    );

    final leftColumn = Container(
      padding: const EdgeInsets.fromLTRB(20, 30, 20, 20),
      child: Column(
        children: [
          title,
          subTitle,
          ratings,
          iconList,
        ],
      ),
    );

    return Scaffold(
      body: Center(
        child: Container(
          margin: const EdgeInsets.fromLTRB(0, 40, 0, 30),
          height: 600,
          child: Card(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 440,
                  child: leftColumn,
                ),
                // mainImage,
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _rowImage() {
    return const Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: 5,
        ),
        Expanded(
          child: Image(
            image: AssetImage('assets/images/image1.jpeg'),
          ),
        ),
        SizedBox(
          width: 5,
        ),
        Expanded(
          child: Image(
            image: AssetImage('assets/images/image2.jpeg'),
          ),
        ),
        SizedBox(
          width: 5,
        ),
        Expanded(
          child: Image(
            image: AssetImage('assets/images/image1.jpeg'),
          ),
        ),
        SizedBox(
          width: 5,
        ),
        Expanded(
          flex: 1,
          child: Image(
            image: AssetImage('assets/images/image1.jpeg'),
          ),
        )
      ],
    );
  }

  Widget _columnImage() {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Image(
          width: 150,
          height: 150,
          image: AssetImage('assets/images/image1.jpeg'),
        ),
        Image(
          width: 150,
          height: 150,
          image: AssetImage('assets/images/image2.jpeg'),
        ),
        Image(
          width: 150,
          height: 150,
          image: AssetImage('assets/images/image1.jpeg'),
        )
      ],
    );
  }

  Row _rowMethod() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: [
            Icon(
              Icons.add_home_outlined,
              color: Colors.amberAccent,
            ),
            Text(
              'Label 1',
            )
          ],
        ),
        Column(
          children: [Icon(Icons.man_4, color: Colors.blue), Text('Label 2')],
        ),
        Column(
          children: [
            Icon(Icons.woman_2, color: Colors.deepOrange),
            Text('Label 3')
          ],
        )
      ],
    );
  }
}
