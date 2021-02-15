import 'package:flutter/material.dart';

import '../../size_config.dart';
import 'components/body.dart';

class AudioCallWithImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //nos ayuda a hacer que nuestra interfaz de usuario responsiva
    SizeConfig().init(context);
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_right, color: Colors.black), 
          onPressed: (){
            Navigator.popAndPushNamed(context, 'dial_screen');
          }
        ),
      ),
      body: Body(),
    );
  }
}
