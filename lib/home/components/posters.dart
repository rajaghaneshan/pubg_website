import 'package:flutter/material.dart';
import 'package:pubg_website/constants.dart';
import 'package:pubg_website/responsive.dart';

class Posters extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        PosterImage(image: 'assets/images/poster1.jpg',),
        PosterImage(image: 'assets/images/poster2.jpg',),
        PosterImage(image: 'assets/images/poster3.jpg',)
      ],
    );
  }
}

class PosterImage extends StatelessWidget {
  final String image;
  const PosterImage({
    Key? key,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: isMobile(context)? kPosterPaddingMobile : isTab(context)? kPosterPaddingTab : kPosterPaddingDesktop,
      child: Container(
        height: isDesktop(context)? 350 : isTab(context)? 280 : 150,
        width: isDesktop(context)? 200 : isTab(context)? 150 : 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular( isDesktop(context)? 40: 20)),
          boxShadow: [
            BoxShadow(
              color: Colors.black,
              offset: Offset(-1.0, 3.0),
              blurRadius: 10.0,
              spreadRadius: 1.0
            )
          ],
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover,
          )
        ),
      ),
    );
  }
}