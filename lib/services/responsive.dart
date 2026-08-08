import 'package:flutter/material.dart';

class Responsive {
  // Retorna true se a largura da tela for menor que 800 pixels (Celulares)
  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 800;

  // Retorna true se a largura estiver entre 800 e 1199 pixels (Tablets)
  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width >= 800 &&
          MediaQuery.of(context).size.width < 1200;

  // Retorna true se a largura for de 1200 pixels ou mais (Desktops / PCs)
  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1200;
}