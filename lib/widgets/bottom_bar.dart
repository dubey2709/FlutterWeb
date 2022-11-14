import 'package:flutter_web/widgets/bottom_bar_column.dart';
import 'package:flutter_web/widgets/info_text.dart';
import 'package:flutter_web/widgets/responsive.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({
    Key? key,
  }) : super(key: key);
  static const Color gradientStartColor = Color(0xff11998e);
  static const Color gradientEndColor = Color(0xff0575E6);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(0.0)),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: gradientStartColor,
            offset: Offset(1.0, 6.0),
            blurRadius: 1.0,
          ),
          BoxShadow(
            color: gradientEndColor,
            offset: Offset(1.0, 6.0),
            blurRadius: 1.0,
          ),
        ],
        gradient: LinearGradient(
            colors: [gradientStartColor, gradientEndColor],
            begin: const FractionalOffset(0.2, 0.2),
            end: const FractionalOffset(1.0, 1.0),
            stops: [0.0, 1.0],
            tileMode: TileMode.clamp),
      ),
      padding: EdgeInsets.all(30),
      //color: Colors.blueGrey[900],
      child: MediaQuery.of(context).size.width < 800
          ? Column(
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    BottomBarColumn(
                      heading: 'ABOUT',
                      s1: 'Contact Us',
                      s2: 'About Us',
                      s3: 'Careers',
                    ),
                    BottomBarColumn(
                      heading: 'QUERIES',
                      s1: 'Help',
                      s2: 'Payment',
                      s3: 'Cancellation',
                    ),
                    BottomBarColumn(
                      heading: 'SOCIAL',
                      s1: 'Twitter',
                      s2: 'Instagram',
                      s3: 'Linked In',
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Divider(color: Colors.white),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InfoText(
                      type: 'Email',
                      text: 'dypranjal@gmail.com',
                    ),
                    SizedBox(height: 5),
                    InfoText(
                      type: 'Institute',
                      text:
                          'Indian Institute of Information Technology, Bhopal',
                    )
                  ],
                ),
                SizedBox(height: 10),
                Divider(color: Colors.white),
                Text(
                  'Pranjal Dubey | Flutter Enthusiast',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
              ],
            )
          : Column(
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    BottomBarColumn(
                      heading: 'ABOUT',
                      s1: 'Contact Us',
                      s2: 'About Us',
                      s3: 'Careers',
                    ),
                    BottomBarColumn(
                      heading: 'QUERIES',
                      s1: 'Help',
                      s2: 'Payment',
                      s3: 'Cancellation',
                    ),
                    BottomBarColumn(
                      heading: 'SOCIAL',
                      s1: 'Twitter',
                      s2: 'Instagram',
                      s3: 'Linked In',
                    ),
                    Container(
                      color: Colors.white,
                      width: 2,
                      height: 150,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InfoText(
                          type: 'Email',
                          text: 'dypranjal@gmail.com',
                        ),
                        SizedBox(height: 5),
                        InfoText(
                          type: 'Institute',
                          text:
                              'Indian Institute of Information Technology, Bhopal',
                        )
                      ],
                    ),
                  ],
                ),
                Divider(
                  color: Colors.white,
                ),
                SizedBox(height: 20),
                Text(
                  'Pranjal Dubey | Flutter Enthusiast',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
    );
  }
}
