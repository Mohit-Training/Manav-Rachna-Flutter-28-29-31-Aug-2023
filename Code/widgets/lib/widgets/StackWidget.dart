//Stack, Positioned
import 'package:flutter/material.dart';

class StackWidget extends StatelessWidget {
  StackWidget({super.key});
  String imgUrl =
      "https://media.contentapi.ea.com/content/dam/news/www-ea/images/2022/09/ea-motive-new-title-teaser-16x9-featured.jpg.adapt.crop191x100.628p.jpg";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          children: [
            Image.network(imgUrl),
            const Positioned(
              left: 7,
              right: 7,
              bottom: 8,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Robert",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w200),
                      ),
                      Text(
                        "IronMan 2",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 15),
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Icon(
                        Icons.more_vert,
                        color: Colors.white,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "16:12",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
