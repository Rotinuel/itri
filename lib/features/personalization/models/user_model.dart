import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:itri/utils/formatters/formatter.dart';  // For Timestamp



// Model class representing user data in Firestore
class UserModel {
  final String id;
  String firstName;
  String lastName;
  final String username;
  final String email;
  String phoneNumber;
  String profilePicture;
  
  // Constructor for UserModel
  UserModel({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.username,
    required this.email,
    required this.phoneNumber,
    required this.profilePicture,
  });

  // Helper function to get the full name
  String get fullName => '$firstName $lastName';

  // Helper function to get format phone number
  String get formattedPhoneNo => IFormatter.formatPhoneNumber(phoneNumber);

  // static function to split full name into first and last names
  static List<String> nameParts(fullName) => fullName.split(" ");

  // static function to generate a user ID from the full name.
  static String generateUsername(fullName) {
    List<String> nameParts = fullName.split(" ");
    String firstName = nameParts[0].toLowerCase();
    String lastName = nameParts.length > 1 ? nameParts[1].toLowerCase() : "";

    String camelCaseUsername = "$firstName$lastName"; // Combine first and last names
    String usernameWithPrefix = "cwt_$camelCaseUsername"; // Add prefix "cwt_"
    return usernameWithPrefix;
  }

  // static function to create an empty user model.
  static UserModel empty() => UserModel(id: '', firstName: '', lastName: '', username: '', email: '', phoneNumber: '', profilePicture: '',
    );

    // convert model to JSON structure for storing data in firebase
  Map<String, dynamic> toJson() {
    return {
      'FirstName': firstName,
      'LastName': lastName,
      'Username': username,
      'Email': email,
      'PhoneNumber': phoneNumber,
      'ProfilePicture': profilePicture,
      // Add other fields as necessary
    };
  }

  // Factory method to create a UserModel from Firestore DocumentSnapshot
  factory UserModel.fromSnapshot(DocumentSnapshot<Map<String, dynamic>> document) {
    if (document.data() != null) {
      final data = document.data()!;
      return UserModel(
        id: document.id,
        firstName: data['FirstName'] ?? '',
        lastName: data['LastName'] ?? '',
        username: data['Username'] ?? '',
        email: data['Email'] ?? '',
        phoneNumber: data['PhoneNumber'] ?? '',
        profilePicture: data['ProfilePicture'] ?? '',
      );
    } else {
      throw StateError('Document data is null for user with id: ${document.id}');
    }
  }
}
