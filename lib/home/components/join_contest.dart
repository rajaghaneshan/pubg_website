import 'package:flutter/material.dart';
import 'package:pubg_website/constants.dart';

class JoinContest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
        width: 450,
        child: Column(
          children: [
            Text(
              "Welcome to COMBAT",
              style: kHeadingText,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'It\'s a great platform to win money. If you are a player in PUBG mobile then thus site is for you guys. If you wanna make money in PUBG well COMBAT must be possible',
              style: TextStyle(
                  fontFamily: 'Poppins',
                  color: Colors.white.withOpacity(0.85),
                  fontWeight: FontWeight.w100),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 30, top: 0),
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                child: TextButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    elevation: MaterialStateProperty.all(5),
                    backgroundColor: MaterialStateProperty.all<Color>(kYellowColor),
                    padding: MaterialStateProperty.all(
                      EdgeInsets.symmetric(horizontal: 34),
                    ),
                  ),
                  child: Text('Join Contest',style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold, fontFamily: 'Poppins', letterSpacing: 2.5),),

                ),
              ),
            ),
            SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }
}
