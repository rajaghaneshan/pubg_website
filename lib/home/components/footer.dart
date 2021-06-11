import 'package:flutter/material.dart';
import 'package:pubg_website/responsive.dart';

import '../../constants.dart';

class Footer extends StatefulWidget {
  @override
  _FooterState createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      width: double.infinity,
      color: Colors.white,
      child: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: isMobile(context) ? 2 : 4,
          childAspectRatio: isMobile(context)
              ? 1.7
              : isTab(context)
                  ? 1.5
                  : 3,
        ),
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        children: [
          LogoContainer(),
          FooterContainer(),
          FooterContainer(),
          FooterContainer(),
        ],
      ),
    );
  }
}

class LogoContainer extends StatelessWidget {
  const LogoContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.topLeft,
        child: Container(
          height: 80,
          width: 100,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/icons/icons8-pubg-helmet-64.png'),
              fit: BoxFit.contain
            ),
          ),
        ));
  }
}

class FooterContainer extends StatelessWidget {
  const FooterContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 6),
          child: Text(
            'About Us',
            style: kLogoText.copyWith(color: kBgColor, fontSize: 20),
          ),
        ),
        InkWell(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 4),
            child: Text('Contact us'),
          ),
          onTap: () {},
        ),
        InkWell(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 4),
            child: Text('Terms and conditions'),
          ),
          onTap: () {},
        ),
        InkWell(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 4),
            child: Text('Help'),
          ),
          onTap: () {},
        ),
      ],
    );
  }
}
