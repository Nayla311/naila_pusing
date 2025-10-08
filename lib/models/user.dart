class User {
  String _email;
  String _password;
  String _name;
  final DateTime _createdAt;

  User(this._email, this._password, this._name, this._createdAt);

  // Encapsulation - Getters
  String get email => _email;
  String get password => _password;
  String get name => _name;
  DateTime get createdAt => _createdAt;

  // Encapsulation - Setters
  set email(String value) => _email = value;
  set password(String value) => _password = value;
  set name(String value) => _name = value;

  String getDisplayName() {
    return _name.isNotEmpty ? _name : _email.split('@')[0].toUpperCase();
  }

  String getFirstLetter() {
    return getDisplayName().substring(0, 1);
  }
}
