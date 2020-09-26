import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class Carousel extends StatelessWidget {
  final List<String> _values = [
    'https://www.lamborghini.com/sites/it-en/files/DAM/lamborghini/model/one-off/veneno-roadster/slider/veneno-roadster.jpg',
    'https://www.motortrend.com/uploads/sites/5/2018/09/2018-McLaren-720S-front-three-quarter-in-motion-3.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSkSr0pDGYwRpe7P2_HolvienGCWaj8W8lSkA&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQjDx2VUVqWhfdH40X2kz6L2TZxAnHr1hC02w&usqp=CAU',
    // 'https://www.carpixel.net/w/ff54935df02361fe338261b510530ba8/ferrari-p80-c-wallpaper-hd-89806.jpg'
    'https://images.unsplash.com/photo-1507065255811-f3b9fe968f84?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjExMzk2fQ&w=1000&q=80',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('carousel')),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(_values[0]),
                ),
                SizedBox(width: 10),
                Text('user._.name'),
              ],
            ),
            Container(
              height: 230,
              width: double.infinity,
              child: Swiper(
                scrollDirection: Axis.horizontal,
                pagination: SwiperPagination(alignment: Alignment.bottomCenter),
                itemCount: _values.length,
                itemBuilder: (ctx, index) {
                  return Container(
                    height: 300,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                          _values[index],
                          scale: 0.5,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
