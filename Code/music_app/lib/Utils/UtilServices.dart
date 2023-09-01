class UtilServices {
  UtilServices._();
  static getInstance() {
    UtilServices utilServices = UtilServices._();
    return utilServices;
  }

  String reduceString(String input) {
    if (input.length > 25) {
      return '${input.substring(0, 22)}...';
    }
    return input;
  }
}
