class UserData {
  String Fname;
  String Lname;
  String email;
  String password;
  String Phone_number;
  String Address;

  UserData({
    required this.Fname,
    required this.Lname,
    required this.email,
    required this.password,
    required this.Phone_number,
    required this.Address,
  });
  convert2map() {
    return {
      "Fname": Fname,
      "Lname": Lname,
      "email": email,
      "password": password,
      "Phone_number": Phone_number,
      "Address": Address,
    };
  }
}
