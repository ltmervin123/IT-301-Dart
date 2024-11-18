class Person {
  int? _id;
  String? _name;
  String? _username;
  String? _password;
  String? _role;

  Person(int id, String name, String username, String password, String role) {
    this._id = id;
    this._name = name;
    this._username = username;
    this._password = password;
    this._role = role;
  }
  void setId(int id) {
    this._id = id;
  }

  void setName(String name) {
    this._name = name;
  }

  void setUsername(String username) {
    this._username = username;
  }

  void setPassword(String password) {
    this._password = password;
  }

  void setRole(String role) {
    this._role = role;
  }
}
