import 'package:flutter/material.dart';

import '../../size_config.dart';
import 'components/body.dart';

class AudioCallWithImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //nos ayuda a hacer que nuestra interfaz de usuario responsiva
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
