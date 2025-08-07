import 'package:flutter/material.dart';

class StackWithImage extends StatelessWidget {
  final List<String> tabs = ['Trending', 'Latest', 'Popular'];
  final List<String> socialIcons = [
    'assets/icons/facebook.png',
    'assets/icons/twitter.png',
    'assets/icons/whatsapp.png',
  ];

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
          Stack(
            alignment: Alignment.topLeft,
            children: [
              Image.network(
                'https://www.aljazeera.com/wp-content/uploads/2025/03/2025-03-05T033441Z_1032570553_RC2R6DAL0G39_RTRMADP_3_USA-TRUMP-CONGRESS-1741145790.jpg?resize=1200%2C630',
                fit: BoxFit.cover,
                height: screenHeight * 0.60,
                width: double.infinity,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.generate(tabs.length, (index) {
                    return Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          tabs[index],
                          style: const TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Container(
                          height: 2,
                          width: 30,
                          color: Colors.transparent,
                        ),
                      ],
                    );
                  })
                      .expand((widget) => [widget, const SizedBox(width: 25)])
                      .toList()
                    ..removeLast(),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: screenHeight * 0.4, left: 15.0, right: 15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          child: Icon(Icons.newspaper, color: Colors.black),
                        ),
                        SizedBox(width: 8),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'News18',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(height: 3),
                            Text(
                              '1h | US & Canada',
                              style: TextStyle(
                                fontSize: 11,
                                color: Colors.white70,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    const Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Text(
                        'Trump presidency\'s final days:\n\'In his mind, he will not have lost\'',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: List.generate(socialIcons.length, (index) {
                        return Icon(Icons.favorite, color: Colors.grey);
                      })
                          .expand((widget) => [widget, const SizedBox(width: 5)])
                          .toList()
                        ..removeLast(),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(padding: EdgeInsetsGeometry.symmetric(horizontal: 20, vertical: 40), child: Text('Here is the example of stack', style: TextStyle(
            color: Colors.black,
            fontSize: 25,
            fontWeight: FontWeight.w600,
          ),),)
        ],
      ),
    );
  }
}
