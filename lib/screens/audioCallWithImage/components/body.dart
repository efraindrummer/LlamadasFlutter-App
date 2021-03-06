import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        //Imagen 
        Image.asset(
          "assets/images/full_image.png", 
          fit: BoxFit.cover
        ),

        DecoratedBox(
          decoration: BoxDecoration(color: Colors.black.withOpacity(0.3)),
        ),

        Padding(
          padding: const EdgeInsets.all(20.0),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Jemmy \nWiliams', 
                  style: Theme.of(context).textTheme.headline3.copyWith(color: Colors.white), 
                ),
                VerticalSpacing(of: 10),
                Text(
                  'Entrande: 00.01'.toUpperCase(), 
                  style: TextStyle(color: Colors.white60)
                ),

                Spacer(),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    RoundedButton(
                      press: () {}, 
                      color: Colors.white,
                      iconColor: Colors.black,
                      iconSrc: "assets/icons/Icon Mic.svg",
                    ),

                    RoundedButton(
                      press: () {}, 
                      color: kRedColor,
                      iconColor: Colors.white,
                      iconSrc: "assets/icons/call_end.svg",
                    ),

                    RoundedButton(
                      press: () {}, 
                      color: Colors.white,
                      iconColor: Colors.black,
                      iconSrc: "assets/icons/Icon Volume.svg",
                    ),
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

class RoundedButton extends StatelessWidget {

  const RoundedButton({
    Key key, 
    this.size = 64, 
    @required this.iconSrc, 
    @required this.color, 
    @required this.iconColor, 
    @required this.press,
  }) : super(key: key);

  final double size;
  final String iconSrc;
  final Color color, iconColor;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getProportionateScreenWidth(size),
      width: getProportionateScreenWidth(size),
      child: FlatButton(
        padding: EdgeInsets.all(15 / 64 * size),
        color: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100)
        ),
        onPressed: press,
        child: SvgPicture.asset(iconSrc, color: iconColor)
      ),
    );
  }
}
