import 'package:flutter/material.dart';

// SizeConfig nos ayuda a hacer que nuestra interfaz de usuario responda
/// Asegúrate de llamar a [SizeConfig.init (context)] en tu pantalla de inicio
class SizeConfig {
  static MediaQueryData _mediaQueryData;
  static double screenWidth;
  static double screenHeight;
  static double defaultSize;
  static Orientation orientation;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    orientation = _mediaQueryData.orientation;
  }
}

// Obtenga la altura proporcional según el tamaño de la pantalla
double getProportionateScreenHeight(double inputHeight) {
  double screenHeight = SizeConfig.screenHeight;
  // Our designer use iPhone 11, that's why we use 896.0
  return (inputHeight / 896.0) * screenHeight;
}

// Obtenga la altura proporcional según el tamaño de la pantalla
double getProportionateScreenWidth(double inputWidth) {
  double screenWidth = SizeConfig.screenWidth;
  return (inputWidth / 414.0) * screenWidth;
  // 414 es el ancho de diseño que usa dsigner o puede decir ancho del iPhone 11
}

// Para agregar espacio libre verticalmente
class VerticalSpacing extends StatelessWidget {
  const VerticalSpacing({
    Key key,
    this.of = 20,
  }) : super(key: key);

  final double of;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getProportionateScreenWidth(of),
    );
  }
}

// Para agregar espacio libre horizontalmente
class HorizontalSpacing extends StatelessWidget {
  const HorizontalSpacing({
    Key key,
    this.of = 20,
  }) : super(key: key);

  final double of;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getProportionateScreenWidth(of),
    );
  }
}