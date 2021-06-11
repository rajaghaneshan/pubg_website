import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pubg_website/constants.dart';
import 'package:pubg_website/responsive.dart';

class Header extends StatefulWidget {
  @override
  _HeaderState createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      width: double.infinity,
      // height: 80,
      color: Colors.transparent,
      child: Row(
        mainAxisAlignment: !isMobile(context)
            ? MainAxisAlignment.spaceBetween
            : MainAxisAlignment.center,
        children: [
          Container(
            child: SvgPicture.asset(
              "assets/icons/pubg-lite.svg",
            ),
          ),
          if (!isMobile(context))
            Container(
              child: Row(
                children: [
                  NavIcons(title: 'Home'),
                  NavIcons(title: 'Contest'),
                  NavIcons(title: 'About Us'),
                  NavIcons(title: 'Contact Us'),
                  NavIcons(title: 'Sign Up'),
                  NavIcons(title: 'Login')
                ],
              ),
            )
        ],
      ),
    );
  }
}

class NavIcons extends StatelessWidget {
  final String title;
  const NavIcons({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: isDesktop(context) ? kABPaddingDesktop : kABPaddingTab,
      child: TextButton(
          onPressed: () {},
          child: Text(
            title,
            style: isDesktop(context) ? kAppBarDesktopText : kAppBarTabText,
          )),
    );
  }
}
