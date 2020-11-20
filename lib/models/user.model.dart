class UserModel {
  String email;
  String id;
  String name;
  String phoneNumber;
  String role;

  UserModel(String email, String id, String name, String phoneNumber, String role) {
    this.email = email;
    this.id = id;
    this.name = name;
    this.phoneNumber = phoneNumber;
    this.role = role;
  }

  static UserModel fromMap(Map<String, dynamic> map) {
    return UserModel(
        map["email"], map["id"], map["name"], map["phoneNumber"], map["role"]);
  }

  Map<String, dynamic> toJson() =>
      {'id': this.id, 'role': this.role, 'email': this.email};
}
