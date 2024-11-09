import 'package:get/get_navigation/src/root/internacionalization.dart';

class LocalStrings extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {

        /// English texts

        'en_US': {

          /// TEXTS

          // -- GLOBAL Texts

          'and': 'and',
          'skip': 'Skip',
          'done': 'Done',
          'submit': 'Submit',
          'appName': 'Weather App',
          'cancel': 'Cancel',
          'tContinue': 'Continue',
          'verify': 'Verify',
          'verified': 'Verified',
          'tryAgain': 'Try Again',
          'edit': 'Edit',

          // --  Messages Texts

          'success': 'Success',
          'error': 'Error',
          'info': 'Info',


          /// ERRORS

          // -- GLOBAL Errors

          'unknownError': 'An unknown error occurred! Try again later.',
          'noConnection': 'Your internet connection is currently not available. Please check or try again.',

          // -- Camara Errors

          'cameraNotAvailable': 'Camera is not available',

          /// SUCCESSES

        },
        'fr_FR': {},
        'ar_AR': {},
      };
}
