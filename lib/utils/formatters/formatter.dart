import 'package:intl/intl.dart';

class IFormatter {
  static String formatDate(DateTime? date) {
    date ??= DateTime.now();
    return DateFormat('dd-MMM-yyyy').format(date); // Customize the date format as needed
  }

  static String formatCurrency(double amount) {
    final compact = NumberFormat.compact(locale: 'en_NG');
    return '₦${compact.format(amount)}'; // Customize the currency locale and symbol as needed
  }

  static String formatPhoneNumber(String phoneNumber) {
    // Assuming a 11-digit US phone number format: (+234) 803-456-7890
    phoneNumber = phoneNumber.replaceAll(RegExp(r'\D'), ''); // Remove non-digit characters
    // Handle numbers starting with '0'
    if (phoneNumber.length == 11 && phoneNumber.startsWith('0')) {
      return '(${phoneNumber.substring(0, 4)}) ${phoneNumber.substring(4, 7)} ${phoneNumber.substring(7)}';
    }
     // Handle numbers with country code (e.g., 234803...)
    if (phoneNumber.length == 13 && phoneNumber.startsWith('234')) {
      return '(+234) ${phoneNumber.substring(3, 6)} ${phoneNumber.substring(6, 9)} ${phoneNumber.substring(9)}';
    }

    // Handle raw 10-digit numbers (e.g., 8034567890)
    if (phoneNumber.length == 10) {
      return '0${phoneNumber.substring(0, 3)} ${phoneNumber.substring(3, 6)} ${phoneNumber.substring(6)}';
    }
    // Add more custom phone number formatting logic for different formats if needed.
    return phoneNumber;
  }


  // Not fully tested.
  static String internationalFormatPhoneNumber(String phoneNumber) {
    // Remove any non-digit characters from the phone number
    var digitsOnly = phoneNumber.replaceAll(RegExp(r'\D'), '');

    // Extract the country code from the digitsOnly
    String countryCode = '+${digitsOnly.substring(0, 2)}';
    digitsOnly = digitsOnly.substring(2);

    // Add the remaining digits with proper formatting
    final formattedNumber = StringBuffer();
    formattedNumber.write('($countryCode) ');

    int i = 0;
    while (i < digitsOnly.length) {
      int groupLength = 2;
      if (i == 0 && countryCode == '+1') {
        groupLength = 3;
      }

      int end = i + groupLength;
      formattedNumber.write(digitsOnly.substring(i, end));

      if (end < digitsOnly.length) {
        formattedNumber.write(' ');
      }
      i = end;
    }

    return formattedNumber.toString();
  }




}


/*
*
*
* */
