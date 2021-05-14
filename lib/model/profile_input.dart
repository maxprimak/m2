import 'package:m2/Services/user_profile.dart';

class ProfileInput {
  String firstName;
  String lastName;
  String email;
  String pwd;
  String rePwd;

  ProfileInput(User profile) {
    firstName = profile.name;
    lastName = profile.lastname;
    email = profile.email;
    pwd = profile.password;
    rePwd = profile.password;
  }

  bool pwdMatches() {
    return pwd!=null && rePwd!=null && pwd==rePwd;
  }
}