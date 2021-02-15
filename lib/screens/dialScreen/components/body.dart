import 'dart:ui';
import 'package:calling/components/dial_user_pic.dart';
import 'package:calling/components/rounded_button.dart';
import 'package:calling/constants.dart';
import 'package:flutter/material.dart';

import '../../../size_config.dart';
import 'dial_button.dart';

class Body extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Text(
              "Anna Wiliams", 
              style: Theme.of(context).textTheme.headline4.copyWith(color: Colors.white),
            ),
            
            Text(
              "Llamando...",
              style: TextStyle(color: Colors.white60)
            ),

            VerticalSpacing(),

            DialUserPic(image: "assets/images/calling_face.png"),

            Spacer(),

            Wrap(
              alignment: WrapAlignment.spaceBetween,
              children: [
                DialButton(
                  press: () {}, 
                  iconSrc: "assets/icons/Icon Mic.svg", 
                  text: "Audio",
                ),

                DialButton(
                  press: () {}, 
                  iconSrc: "assets/icons/Icon Volume.svg", 
                  text: "Microfono",
                ),

                DialButton(
                  press: () {}, 
                  iconSrc: "assets/icons/Icon Video.svg", 
                  text: "Video",
                ),

                DialButton(
                  press: () {}, 
                  iconSrc: "assets/icons/Icon Message.svg", 
                  text: "Mensaje",
                ),

                DialButton(
                  press: () {}, 
                  iconSrc: "assets/icons/Icon User.svg", 
                  text: "Agregar Contacto",
                ),

                DialButton(
                  press: () {}, 
                  iconSrc: "assets/icons/Icon Voicemail.svg", 
                  text: "Mensaje de Voz",
                ),
              
              ],
            ),
            
            VerticalSpacing(),

            RoundedButton(
              iconSrc: "assets/icons/call_end.svg",
              color: kRedColor,
              iconColor: Colors.white,
              press: (){},
            )
          ],
        ),
      ),
    );
  }
}



