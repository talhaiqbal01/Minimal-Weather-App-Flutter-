import 'package:logger/logger.dart';

/// Logger class for console-logging-related operations
class TLoggerHelper {
  TLoggerHelper._(); //-- To avoid creating instances

  static final Logger _logger = Logger(printer: PrettyPrinter(), level: Level.debug);

  /// Function to show data in console in debug format
  static void debug(String message) => _logger.d(message);

  /// Function to show data in console in info format
  static void info(String message) => _logger.i(message);

  /// Function to show data in console in warning format
  static void warning(String message) => _logger.w(message);

  /// Function to show data in console in error format
  static void error(String message, [dynamic error]) => _logger.e(message, error: error, stackTrace: StackTrace.current);
}
