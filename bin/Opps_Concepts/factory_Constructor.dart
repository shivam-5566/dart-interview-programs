class Logger {
  // Private static field to hold the single instance
  static Logger? _instance;

  // Private constructor to prevent external instantiation
  Logger._internal() {
    print("Logger instance created.");
  }

  // Factory constructor to control object creation
  factory Logger() {
    if (_instance == null) {
      _instance = Logger._internal();
    } else {
      print("Returning existing Logger instance.");
    }
    return _instance!;
  }

  // Method to log a message
  void log(String message) {
    print("LOG: $message");
  }
}

void main() {
  // Create first Logger instance
  Logger logger1 = Logger();
  logger1.log("This is the first log message.");

  // Try to create a second Logger instance
  Logger logger2 = Logger();
  logger2.log("This is the second log message.");

  // Check if both instances are the same
  print(logger1 == logger2);  // Output: true (Both instances are the same)
}
