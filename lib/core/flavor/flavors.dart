enum Flavor { dev, prod, qa, hom}

class F {
  static late Flavor appFlavor;

  static String get title {
    switch (appFlavor) {
      case Flavor.prod:
        return 'Production'; 
      case Flavor.qa:
        return 'Quality';
      case Flavor.hom:
        return 'Homologation';
      case Flavor.dev:
      default:
        return 'Development';
    }
    
  }
  //get my enviroment 
  static bool get isDev => appFlavor == Flavor.dev;
  static bool get isProd => appFlavor == Flavor.prod;
  static bool get isHom => appFlavor == Flavor.hom;
  static bool get isQa => appFlavor == Flavor.qa;
  // get base url
  static String get baseUrl {
    switch (appFlavor) {
      case Flavor.prod:
        return 'https://api.flutter.flavor.com.br'; 
      case Flavor.qa:
        return 'https://api.flutter.flavor-qa.com.br';
      case Flavor.hom:
        return 'https://api.flutter.flavor-hom.com.br';
      case Flavor.dev:
      default:
        return 'https://api.flutter.flavor-dev.com.br';
    }
  }

}