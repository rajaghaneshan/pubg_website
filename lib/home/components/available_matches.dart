import 'package:flutter/material.dart';
import 'package:pubg_website/constants.dart';
import 'package:pubg_website/responsive.dart';

class AvailableMatches extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    
    final size = MediaQuery.of(context).size.width;
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Available Matches',
            style: kHeadingText,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ConstrainedBox(
              constraints: BoxConstraints(
                maxWidth: double.infinity
              ),
              child: GridView(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: isDesktop(context)
                        ? 3
                        : isTab(context)
                            ? 2
                            : 1,
                    childAspectRatio: size <= 400? 0.85 : size <= 500? 0.95 : size<= 550? 1.2 :  size<= 650? 1.3 : size<= 750? 0.75 : size<= 1000? 0.9 :  size<= 1200? 1.22 : size<=1300? 1.4 :size<=1400? 1:  size<= 1500? 1.05 : 1.15),
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                children: [ContestCard(), ContestCard(), ContestCard()],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class ContestCard extends StatelessWidget {
  const ContestCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: isDesktop(context)
          ? const EdgeInsets.all(28.0)
          : EdgeInsets.all(18.0),
      child: Card(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        color: kYellowColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/contestImage.jpg',
              width: double.infinity,
              height: 200,
              fit: BoxFit.cover,
            ),
            Column(
              // mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.play_circle_outline,
                      size: 40,
                    ),
                    RichText(
                      text: TextSpan(
                        text: ' PUBG MOBILE ',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                        children: <InlineSpan>[
                          TextSpan(
                              text: '- Match #01',
                              style: TextStyle(
                                color: kBgColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              )),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 12.0),
                      child: Column(
                        children: [
                          Text('Prize Amount'),
                          Text(
                            'Rs. 100',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text('Type'),
                          Text(
                            'Squad',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: 10, top: 10),
                          height: 35,
                          decoration:
                              BoxDecoration(border: Border.all(width: 1)),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 10, top: 10),
                          height: 35,
                          decoration:
                              BoxDecoration(border: Border.all(width: 1)),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text('Per Kill'),
                          Text(
                            '0.00',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text('Version'),
                          Text(
                            'TPP',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: 10, top: 10),
                          height: 35,
                          decoration:
                              BoxDecoration(border: Border.all(width: 1)),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 10, top: 10),
                          height: 35,
                          decoration:
                              BoxDecoration(border: Border.all(width: 1)),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 18.0),
                      child: Column(
                        children: [
                          Text('Play for'),
                          Text(
                            'FREE',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text('Map'),
                          Text(
                            'Erangel',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
