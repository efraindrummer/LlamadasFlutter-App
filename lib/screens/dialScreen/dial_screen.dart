import 'package:calling/screens/dialScreen/components/body.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../size_config.dart';

class DialScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: kBackgoundColor,
      body: Body(),
    );
  }
}