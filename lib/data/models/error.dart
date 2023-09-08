///Class to handle exceptions
class Exceptions implements Exception {
  ///Creates instance of class Exception
  Exceptions(this.message);

  ///Message to show to user
  final String message;
}
